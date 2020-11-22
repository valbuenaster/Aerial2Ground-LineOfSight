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
z_goal=0.35;

X_OFFSET=0.01;
Y_OFFSET=0.01;
Z_OFFSET=-0.093;

p_OFFSET=[X_OFFSET;Y_OFFSET;Z_OFFSET];
p_GOAL=[x_goal;y_goal;z_goal];

% plot(xcircle,ycircle,'k--','linewidth',2.0) 

Q1=createQuadrotor_GimbalLaser(0,0,0,0,0,0,0,0,[49 79 79]/255);
% Q1=createQuadrotor_GimbalLaser(0,0,0.5,pi/9,pi/9,pi/9,pi/2,pi/2,[49 79 79]/255);
axis equal, grid on
set(gcf,'windowstyle','docked')
%%
robotPosition=[1.0 0.0 1.093 0 0 0]';
% robotPosition=[-0.64155 -1.09835 0.97357, (pi/180)*1.47 -(pi/180)*0.16, (pi/180)*27.24]';
% anglesGimbal= [pi/2 pi/2]';
anglesGimbal= [0 0 ]';

R=setQuadrotor_GimbalLaser(Q1,robotPosition(1,1),robotPosition(2,1),robotPosition(3,1),robotPosition(4,1),robotPosition(5,1),robotPosition(6,1),anglesGimbal(1,1),anglesGimbal(2,1));

relVect=R(1:3,1:3)*p_OFFSET;

v_rel=[x_goal - robotPosition(1,1) - relVect(1,1), y_goal - robotPosition(2,1)- relVect(2,1), z_goal- robotPosition(3,1)- relVect(3,1)]'
q_v_rel=quiver3(robotPosition(1,1)+ relVect(1,1),robotPosition(2,1)+ relVect(2,1),robotPosition(3,1)+ relVect(3,1),v_rel(1,1),v_rel(2,1),v_rel(3,1),'b','linewidth',2.0);
axis([-2 2 -2 2 -0.05 1.4])
%%
Rpp=createDif_Robot_3D(0,0,0.1,0.0,[0.2 0.2 0.2]');
anglesGimbal= returnAnglesGimbal(p_GOAL,p_OFFSET,robotPosition);
Rp=setQuadrotor_GimbalLaser(Q1,robotPosition(1,1),robotPosition(2,1),robotPosition(3,1),robotPosition(4,1),robotPosition(5,1),robotPosition(6,1),anglesGimbal(1,1),anglesGimbal(2,1));
(180/pi)*anglesGimbal
axis([-2 2 -2 2 -0.05 1.4])
%%
traj_x_circle =[ xcircle;xcircle;xcircle];
traj_y_circle =[ ycircle;ycircle;ycircle];
traj_z_circle = 1.093*ones(size(traj_x_circle));
HeadingAngle=[ang; ang; ang];
delete(q_v_rel)
LimPoints=size(traj_x_circle,1);
%%
for iter_i=1:LimPoints
    robotPosition = [traj_x_circle(iter_i,1), traj_y_circle(iter_i,1), traj_z_circle(iter_i,1),(pi/17)*sin(HeadingAngle(iter_i,1)),(-pi/17)*cos(HeadingAngle(iter_i,1)),0*HeadingAngle(iter_i,1)]';
    anglesGimbal= returnAnglesGimbal(p_GOAL,p_OFFSET,robotPosition);
    Rp=setQuadrotor_GimbalLaser(Q1, traj_x_circle(iter_i,1), traj_y_circle(iter_i,1), traj_z_circle(iter_i,1),(pi/17)*sin(HeadingAngle(iter_i,1)),(-pi/17)*cos(HeadingAngle(iter_i,1)),0*HeadingAngle(iter_i,1),anglesGimbal(1,1),anglesGimbal(2,1));
    (180/pi)*anglesGimbal
    drawnow
end

%%
% robotPosition = [ 0.13884  0.0085 0.55323 -0.0734784 -0.0129154 -0.549255]';
robotPosition = [ 0 0 0.55323 0 0 0]';
anglesGimbal = [0 0]';
R=setQuadrotor_GimbalLaser(Q1,robotPosition(1,1),robotPosition(2,1),robotPosition(3,1),robotPosition(4,1),robotPosition(5,1),robotPosition(6,1),anglesGimbal(1,1),anglesGimbal(2,1));