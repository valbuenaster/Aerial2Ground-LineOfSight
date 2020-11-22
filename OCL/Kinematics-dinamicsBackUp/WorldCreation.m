%%
clear,clc,close all

A=figure;
hold on

r_0=1.5;
ang= [0:pi/100:2*pi]';
xcircle=r_0.*cos(ang); 
ycircle=r_0.*sin(ang);

x_goal=0;
y_goal=0;
z_goal=0;

X_OFFSET=0.01;
Y_OFFSET=0.01;
Z_OFFSET=-0.093;
 
plot(xcircle,ycircle,'k--','linewidth',2.0) 

Q1=createQuadrotor_GimbalLaser(0,0,0,0,0,0,0,0,[49 79 79]/255);
% Q1=createQuadrotor_GimbalLaser(0,0,0.5,pi/9,pi/9,pi/9,pi/2,pi/2,[49 79 79]/255);
axis equal, grid on
set(gcf,'windowstyle','docked')
%%
robotPosition=[1.0 0.0 1.093 0 0 0]';
% anglesGimbal= [pi/2 pi/2]';
anglesGimbal= [0 0]';

R=setQuadrotor_GimbalLaser(Q1,robotPosition(1,1),robotPosition(2,1),robotPosition(3,1),robotPosition(4,1),robotPosition(5,1),robotPosition(6,1),anglesGimbal(1,1),anglesGimbal(2,1));

relVect=R(1:3,1:3)*[X_OFFSET;Y_OFFSET;Z_OFFSET];

v_rel=[x_goal - robotPosition(1,1) - relVect(1,1), y_goal - robotPosition(2,1)- relVect(2,1), z_goal- robotPosition(3,1)- relVect(3,1)]'
q_v_rel=quiver3(robotPosition(1,1)+ relVect(1,1),robotPosition(2,1)+ relVect(2,1),robotPosition(3,1)+ relVect(3,1),v_rel(1,1),v_rel(2,1),v_rel(3,1),'b');

% v_rel with respect to robot position minus the offset
v_rel_ON_robot= R(1:3,1:3)'*v_rel

% v_rel with respect to end effector orientation
     Rzee=[cos(3*pi/4 )   sin(3*pi/4 )   0;
         -sin(3*pi/4 )    cos(3*pi/4 )   0;
           0        0   1];
     Rxee=[    1    0       0;
           0  cos(pi) -sin(pi);
           0  sin(pi)  cos(pi)];

v_rel_End_Effector= (Rxee*Rzee*(R(1:3,1:3)'))*v_rel
axis([-2 2 -2 2 -0.05 1.3])
%%
anglesGimbal= [(pi/2)- atan2(v_rel_End_Effector(2),v_rel_End_Effector(1)) -(pi/2-atan2(v_rel_End_Effector(3),norm(v_rel_End_Effector(1:2))))]';
anglesGimbal*180/pi
Rp=setQuadrotor_GimbalLaser(Q1,robotPosition(1,1),robotPosition(2,1),robotPosition(3,1),robotPosition(4,1),robotPosition(5,1),robotPosition(6,1),anglesGimbal(1,1),anglesGimbal(2,1));

axis([-2 2 -2 2 -0.05 1.3])

