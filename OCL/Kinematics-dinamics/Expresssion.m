%%
clear,clc,close all
x_robot= 23.07; y_robot= -1287.75; z_robot=934.96; p= -0.91; q= 5.07; r=-165.41; x_goal=-436.74; y_goal=-337.36; z_goal=52.11

X_OFFSET =  -9.66;% CHANGE TO THE ONES WRITEN IN THE CODE
Y_OFFSET =  6.00;
Z_OFFSET =  -122.61;

p_OFFSET=[X_OFFSET;Y_OFFSET;Z_OFFSET]
p_GOAL=[x_goal;y_goal;z_goal]

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

relVect=R_rot(1:3,1:3)*p_OFFSET
v_rel=[x_goal - x_robot - relVect(1,1), y_goal - y_robot - relVect(2,1), z_goal- z_robot- relVect(3,1)]'

Rzee=[-1/sqrt(2)    1/sqrt(2)   0;
      -1/sqrt(2)    -1/sqrt(2)   0;
          0        0   1];
Rxee=[ 1      0       0;
       0     -1       0;
       0      0       -1];

v_rel_End_Effector= (Rxee*Rzee*(R_rot)')*[v_rel(1) v_rel(2) v_rel(3)]'

angles= [sign(v_rel_End_Effector(1)*v_rel_End_Effector(2))*atan2(abs(v_rel_End_Effector(1)),abs(v_rel_End_Effector(2))) -sign(v_rel_End_Effector(2))*acos(v_rel_End_Effector(3)/norm(v_rel_End_Effector))]'