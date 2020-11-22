function s=setRobot3D(R,x,y,z,theta)
   Trama=[ cos(theta+(pi/2)) -sin(theta+(pi/2)) 0 x;
            sin(theta+(pi/2))  cos(theta+(pi/2)) 0 y;
                   0          0  1  z;
                   0          0  0  1];
   set(R.Body,'Matrix',Trama);
   s=Trama;
end