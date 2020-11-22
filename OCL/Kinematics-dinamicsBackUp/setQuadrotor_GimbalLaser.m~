function R=setQuadrotor_GimbalLaser(Q,x,y,z,alpha,beta,theta,gamma,phi)
    scaling=0.03;
    r=9.80371;
    
     Rz=[cos(theta)   -sin(theta)   0;
         sin(theta)    cos(theta)   0;
           0        0   1];
     Ry=[cos(alpha)    0   sin(alpha);
           0    1       0;
        -sin(alpha)    0   cos(alpha)];
     Rx=[    1    0       0;
           0  cos(beta) -sin(beta);
           0  sin(beta)  cos(beta)];
     R=Rx*Ry*Rz;
   
   Trama=[ R [x;y;z];[0 0 0 1]];
   
    Tramabccwl=[ eye(3) [-scaling*r;0;0];[0 0 0 1]];
    Tramabccwr=[ eye(3) [scaling*r;0;0];[0 0 0 1]];
    Tramabcwf=[ eye(3) [0;scaling*r;0];[0 0 0 1]];
    Tramabcwb=[ eye(3) [0;-scaling*r;0];[0 0 0 1]];
   
    Rz1=[cos(gamma+3*pi/4)   -sin(gamma+3*pi/4)   0;
         sin(gamma+3*pi/4)    cos(gamma+3*pi/4)   0;
           0        0   1];    
    Trama_J_1=[ Rz1 [0;0;-0.093];[0 0 0 1]];
    
     Rx2=[    1    0       0;
           0  cos(phi) -sin(phi);
           0  sin(phi)  cos(phi)]; 
    Trama_J_2=[ Rx2 [0;0;0];[0 0 0 1]];   
    
   set(Q.Body,'Matrix',Trama);
   set(Q.hbccwl,'Matrix',Tramabccwl);
   set(Q.hbccwr,'Matrix',Tramabccwr);
   set(Q.hbcwf,'Matrix',Tramabcwf);
   set(Q.hbcwb,'Matrix',Tramabcwb);
   set(Q.J_1,'Matrix',Trama_J_1);
   set(Q.J_2,'Matrix',Trama_J_2);
   
   R= Trama;
end