%%
clear,clc,close all

syms ca cb ct sa sb st X_OFFSET Y_OFFSET Z_OFFSET x_goal y_goal z_goal x_robot y_robot z_robot real 
syms SQRT_1_2 real 
syms R_abs_rel00 R_abs_rel01 R_abs_rel02 R_abs_rel10 R_abs_rel11 R_abs_rel12 R_abs_rel20 R_abs_rel21 R_abs_rel22 real
syms v_rel_x v_rel_y v_rel_z real
%
v_OFFSET=[X_OFFSET; Y_OFFSET; Z_OFFSET];
P_goal=[x_goal; y_goal; z_goal];
rp=[x_robot; y_robot; z_robot];

Rz=[ct   -st   0;
    st    ct   0;
     0     0   1];
Ry=[cb    0   sb;
     0    1    0;
   -sb    0   cb];
Rx=[    1   0   0;
        0  ca -sa;
        0  sa  ca];
       
R_rot=Rx*Ry*Rz
R=[R_abs_rel00 R_abs_rel01 R_abs_rel02;
   R_abs_rel10 R_abs_rel11 R_abs_rel12;
   R_abs_rel20 R_abs_rel21 R_abs_rel22]
relVect=R*v_OFFSET

v_rel=P_goal - rp - relVect
    
%     Rzee=[cos(3*pi/4 )    sin(3*pi/4 )   0;
%          -sin(3*pi/4 )    cos(3*pi/4 )   0;
%                    0               0   1];
%     Rxee=[    1    0       0;
%            0  cos(pi) -sin(pi);
%            0  sin(pi)  cos(pi)];

Rzee=[-SQRT_1_2     SQRT_1_2   0;
      -SQRT_1_2    -SQRT_1_2   0;
          0        0   1];
Rxee=[ 1      0       0;
       0     -1       0;
       0      0       -1];

v_rel_End_Effector= (Rxee*Rzee*(R)')*[v_rel_x v_rel_y v_rel_z]';

v_rel_End_Effector=simple(v_rel_End_Effector)
%%
Ans =[
                                                                         - (R00*aRzee + R01*bRzee)*(x_robot - x_goal + R00*X_OFFSET + R01*Y_OFFSET + R02*Z_OFFSET) - (R10*aRzee + R11*bRzee)*(y_robot - y_goal + R10*X_OFFSET + R11*Y_OFFSET + R12*Z_OFFSET) - (R20*aRzee + R21*bRzee)*(z_robot - z_goal + R20*X_OFFSET + R21*Y_OFFSET + R22*Z_OFFSET);
   (R02*bRxee - R01*aRxee*aRzee + R00*aRxee*bRzee)*(x_robot - x_goal + R00*X_OFFSET + R01*Y_OFFSET + R02*Z_OFFSET) + (R12*bRxee - R11*aRxee*aRzee + R10*aRxee*bRzee)*(y_robot - y_goal + R10*X_OFFSET + R11*Y_OFFSET + R12*Z_OFFSET) + (R22*bRxee - R21*aRxee*aRzee + R20*aRxee*bRzee)*(z_robot - z_goal + R20*X_OFFSET + R21*Y_OFFSET + R22*Z_OFFSET);
 - (R02*aRxee + R01*aRzee*bRxee - R00*bRxee*bRzee)*(x_robot - x_goal + R00*X_OFFSET + R01*Y_OFFSET + R02*Z_OFFSET) - (R12*aRxee + R11*aRzee*bRxee - R10*bRxee*bRzee)*(y_robot - y_goal + R10*X_OFFSET + R11*Y_OFFSET + R12*Z_OFFSET) - (R22*aRxee + R21*aRzee*bRxee - R20*bRxee*bRzee)*(z_robot - z_goal + R20*X_OFFSET + R21*Y_OFFSET + R22*Z_OFFSET)]

%%
clear,clc,close all
% p=
% q=
% r=
p= -1.26, q= 5, r=-165.17

ca= cosd(p); 
cb= cosd(q);
ct= cosd(r);
sa= sind(p);
sb= sind(q); 
st= sind(r); 

Rz=[ct   -st   0;
    st    ct   0;
     0     0   1];
Ry=[cb    0   sb;
     0    1    0;
   -sb    0   cb];
Rx=[    1   0   0;
        0  ca -sa;
        0  sa  ca];
       
R_rot=Rx*Ry*Rz
%%
Rotation_Matrix=[
-0.963011 0.254978 0.0871557  ;
-0.254037 -0.966946 0.0219057  ;
0.0898604 -0.00104539 0.995954  ]
