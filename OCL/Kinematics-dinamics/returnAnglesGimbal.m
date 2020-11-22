function angles= returnAnglesGimbal(P_goal,v_OFFSET,RobotPosition)
    rp=[RobotPosition(1,1); 
        RobotPosition(2,1);
        RobotPosition(3,1)];

    alpha=RobotPosition(4,1); 
    beta=RobotPosition(5,1);
    theta=RobotPosition(6,1);
    Rz=[cos(theta)   -sin(theta)   0;
         sin(theta)    cos(theta)   0;
           0        0   1];
    Ry=[cos(beta)    0   sin(beta);
           0    1       0;
        -sin(beta)    0   cos(beta)];
    Rx=[    1    0       0;
           0  cos(alpha) -sin(alpha);
           0  sin(alpha)  cos(alpha)];
    R=Rx*Ry*Rz;
    
    relVect=R*v_OFFSET;
    
    v_rel=P_goal - rp - relVect;
    
    Rzee=[cos(3*pi/4 )    sin(3*pi/4 )   0;
         -sin(3*pi/4 )    cos(3*pi/4 )   0;
                   0               0   1];
    Rxee=[    1    0       0;
           0  cos(pi) -sin(pi);
           0  sin(pi)  cos(pi)];

    v_rel_End_Effector= (Rxee*Rzee*(R)')*v_rel;
%     angles= [(pi/2)- atan2(v_rel_End_Effector(2),v_rel_End_Effector(1)) -(pi/2-atan2(v_rel_End_Effector(3),norm(v_rel_End_Effector(1:2))))]'; %works


    angles= [sign(v_rel_End_Effector(1)*v_rel_End_Effector(2))*atan2(abs(v_rel_End_Effector(1)),abs(v_rel_End_Effector(2))) -sign(v_rel_End_Effector(2))*acos(v_rel_End_Effector(3)/norm(v_rel_End_Effector))]'; 
end