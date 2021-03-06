function R=createDif_Robot_3D(x0,y0,z0,theta0,color)
    R=0.2;
    ang= [0:pi/5.5:2*pi]';
    np=size(ang,1);
    circlebody.vertices=[0           0           0;
                      R.*cos(ang) R.*sin(ang) zeros(np,1)];
    circlebody.faces=[ones(np,1) [2:np+1]' [3:np+1 2]' ];
    circlebody.facecolor=color;
    circlebody.edgecolor=[0 0 0];
        
    s1_a.vertices=10*[0 -.0089 .0006;0 -.0087 -.002;0 -.0083 .0032;0 -.0077 -.0045;0 -.007 .0056;0 -.0061 -.0065;0 -.005 .0074;0 -.0039 -.0081;0 -.0026 .0086;0 -.0013 -.0088;0 0 .009;0 .0013 -.0088;0 .0026 .0086;0 .0039 -.0081;0 .005 .0074;0 .0061 -.0065;0 .007 .0056;0 .0077 -.0045;0 .0083 .0032;0 .0087 -.002;0 .0089 .0006;0 .009 0;0 .009 0;.005 -.0089 .0006;.005 -.0087 -.002;.005 -.0083 .0032;.005 -.0077 -.0045;.005 -.007 .0056;.005 -.0061 -.0065;.005 -.005 .0074;.005 -.0039 -.0081;.005 -.0026 .0086;.005 -.0013 -.0088;.005 0 .009;.005 .0013 -.0088;.005 .0026 .0086;.005 .0039 -.0081;.005 .005 .0074;.005 .0061 -.0065;.005 .007 .0056;.005 .0077 -.0045;.005 .0083 .0032;.005 .0087 -.002;.005 .0089 .0006;.005 .0089 .0006;.005 .009 0]
    s1_a.faces=[ 19,21,45;45,21,43;22,20,44;18,44,20;44,18,41;16,41,18;41,16,39;14,39,16;39,14,37;12,37,14;37,12,35;10,35,12;35,10,33;8,33,10;33,8,31;6,31,8;31,6,29;4,29,6;29,4,27;2,27,4;27,2,25;0,25,2;25,0,23;1,23,0;23,1,24;3,24,1;24,3,26;5,26,3;26,5,28;7,28,5;28,7,30;9,30,7;30,9,32;11,32,9;32,11,34;13,34,11;34,13,36;15,36,13;36,15,38;17,38,15;38,17,40;19,40,17;40,19,42;45,42,19 ]+1;
    s1_a.facecolor=ones(3,1)-color;

    s2_a.vertices=10*[0 -.0089 .0006;0 -.0087 -.002;0 -.0083 .0032;0 -.0077 -.0045;0 -.007 .0056;0 -.0061 -.0065;0 -.005 .0074;0 -.0039 -.0081;0 -.0026 .0086;0 -.0013 -.0088;0 0 .009;0 .0013 -.0088;0 .0026 .0086;0 .0039 -.0081;0 .005 .0074;0 .0061 -.0065;0 .007 .0056;0 .0077 -.0045;0 .0083 .0032;0 .0087 -.002;0 .0089 .0006;0 .009 0];
    s2_a.faces=[21,0,20;2,20,0;20,2,18;4,18,2;18,4,16;6,16,4;16,6,14;8,14,6;14,8,12;10,12,8;11,9,7;17,15,13;21,19,0;3,0,19;0,3,1;13,11,17;7,17,11;17,7,19;5,19,7;19,5,3]+1; 
    s2_a.facecolor=ones(3,1)-color;
    s2_a.edgecolor=ones(3,1)-color;

    s3_a.vertices=10*[.0049 -.0089 .0006;.0049 -.0087 -.002;.0049 -.0083 .0032;.0049 -.0077 -.0045;.005 -.007 .0056;.005 -.0061 -.0065;.005 -.005 .0074;.005 -.0039 -.0081;.005 -.0026 .0086;.005 -.0013 -.0088;.005 0 .009;.005 .0013 -.0088;.005 .0026 .0086;.005 .0039 -.0081;.005 .005 .0074;.005 .0061 -.0065;.005 .007 .0056;.005 .0077 -.0045;.005 .0083 .0032;.005 .0087 -.002;.005 .0089 .0006;.005 .009 0];
    s3_a.faces=[21,0,19;1,19,0;19,1,17;3,17,1;17,3,15;5,15,3;15,5,13;7,13,5;13,7,11;9,11,7;14,12,0;10,0,12;16,14,18;0,18,14;18,0,20;21,20,0;4,2,6;0,6,2;6,0,8;10,8,0;]+1; 
    s3_a.facecolor=ones(3,1)-color;
    s3_a.edgecolor=ones(3,1)-color;
    
    s1_a.vertices(:,1)=s1_a.vertices(:,1)+0.16;
    s2_a.vertices(:,1)=s2_a.vertices(:,1)+0.16;
    s3_a.vertices(:,1)=s3_a.vertices(:,1)+0.16; 
    
    
    s1_a.vertices(:,2)=s1_a.vertices(:,2)+0.16;
    s2_a.vertices(:,2)=s2_a.vertices(:,2)+0.16;
    s3_a.vertices(:,2)=s3_a.vertices(:,2)+0.16; 
    
    s1_b.vertices=10*[0 -.0089 .0006;0 -.0087 -.002;0 -.0083 .0032;0 -.0077 -.0045;0 -.007 .0056;0 -.0061 -.0065;0 -.005 .0074;0 -.0039 -.0081;0 -.0026 .0086;0 -.0013 -.0088;0 0 .009;0 .0013 -.0088;0 .0026 .0086;0 .0039 -.0081;0 .005 .0074;0 .0061 -.0065;0 .007 .0056;0 .0077 -.0045;0 .0083 .0032;0 .0087 -.002;0 .0089 .0006;0 .009 0;0 .009 0;.005 -.0089 .0006;.005 -.0087 -.002;.005 -.0083 .0032;.005 -.0077 -.0045;.005 -.007 .0056;.005 -.0061 -.0065;.005 -.005 .0074;.005 -.0039 -.0081;.005 -.0026 .0086;.005 -.0013 -.0088;.005 0 .009;.005 .0013 -.0088;.005 .0026 .0086;.005 .0039 -.0081;.005 .005 .0074;.005 .0061 -.0065;.005 .007 .0056;.005 .0077 -.0045;.005 .0083 .0032;.005 .0087 -.002;.005 .0089 .0006;.005 .0089 .0006;.005 .009 0]
    s1_b.faces=[ 19,21,45;45,21,43;22,20,44;18,44,20;44,18,41;16,41,18;41,16,39;14,39,16;39,14,37;12,37,14;37,12,35;10,35,12;35,10,33;8,33,10;33,8,31;6,31,8;31,6,29;4,29,6;29,4,27;2,27,4;27,2,25;0,25,2;25,0,23;1,23,0;23,1,24;3,24,1;24,3,26;5,26,3;26,5,28;7,28,5;28,7,30;9,30,7;30,9,32;11,32,9;32,11,34;13,34,11;34,13,36;15,36,13;36,15,38;17,38,15;38,17,40;19,40,17;40,19,42;45,42,19 ]+1;
    s1_b.facecolor=ones(3,1)-color;

    s2_b.vertices=10*[0 -.0089 .0006;0 -.0087 -.002;0 -.0083 .0032;0 -.0077 -.0045;0 -.007 .0056;0 -.0061 -.0065;0 -.005 .0074;0 -.0039 -.0081;0 -.0026 .0086;0 -.0013 -.0088;0 0 .009;0 .0013 -.0088;0 .0026 .0086;0 .0039 -.0081;0 .005 .0074;0 .0061 -.0065;0 .007 .0056;0 .0077 -.0045;0 .0083 .0032;0 .0087 -.002;0 .0089 .0006;0 .009 0];
    s2_b.faces=[21,0,20;2,20,0;20,2,18;4,18,2;18,4,16;6,16,4;16,6,14;8,14,6;14,8,12;10,12,8;11,9,7;17,15,13;21,19,0;3,0,19;0,3,1;13,11,17;7,17,11;17,7,19;5,19,7;19,5,3]+1; 
    s2_b.facecolor=ones(3,1)-color;
    s2_b.edgecolor=ones(3,1)-color;

    s3_b.vertices=10*[.0049 -.0089 .0006;.0049 -.0087 -.002;.0049 -.0083 .0032;.0049 -.0077 -.0045;.005 -.007 .0056;.005 -.0061 -.0065;.005 -.005 .0074;.005 -.0039 -.0081;.005 -.0026 .0086;.005 -.0013 -.0088;.005 0 .009;.005 .0013 -.0088;.005 .0026 .0086;.005 .0039 -.0081;.005 .005 .0074;.005 .0061 -.0065;.005 .007 .0056;.005 .0077 -.0045;.005 .0083 .0032;.005 .0087 -.002;.005 .0089 .0006;.005 .009 0];
    s3_b.faces=[21,0,19;1,19,0;19,1,17;3,17,1;17,3,15;5,15,3;15,5,13;7,13,5;13,7,11;9,11,7;14,12,0;10,0,12;16,14,18;0,18,14;18,0,20;21,20,0;4,2,6;0,6,2;6,0,8;10,8,0;]+1; 
    s3_b.facecolor=ones(3,1)-color;
    s3_b.edgecolor=ones(3,1)-color;
    
    s1_b.vertices(:,1)=s1_b.vertices(:,1)-0.21;
    s2_b.vertices(:,1)=s2_b.vertices(:,1)-0.21;
    s3_b.vertices(:,1)=s3_b.vertices(:,1)-0.21; 
    
    s1_b.vertices(:,2)=s1_b.vertices(:,2)+0.16;
    s2_b.vertices(:,2)=s2_b.vertices(:,2)+0.16;
    s3_b.vertices(:,2)=s3_b.vertices(:,2)+0.16; 
    

    
    
    s1_c.vertices=10*[0 -.0089 .0006;0 -.0087 -.002;0 -.0083 .0032;0 -.0077 -.0045;0 -.007 .0056;0 -.0061 -.0065;0 -.005 .0074;0 -.0039 -.0081;0 -.0026 .0086;0 -.0013 -.0088;0 0 .009;0 .0013 -.0088;0 .0026 .0086;0 .0039 -.0081;0 .005 .0074;0 .0061 -.0065;0 .007 .0056;0 .0077 -.0045;0 .0083 .0032;0 .0087 -.002;0 .0089 .0006;0 .009 0;0 .009 0;.005 -.0089 .0006;.005 -.0087 -.002;.005 -.0083 .0032;.005 -.0077 -.0045;.005 -.007 .0056;.005 -.0061 -.0065;.005 -.005 .0074;.005 -.0039 -.0081;.005 -.0026 .0086;.005 -.0013 -.0088;.005 0 .009;.005 .0013 -.0088;.005 .0026 .0086;.005 .0039 -.0081;.005 .005 .0074;.005 .0061 -.0065;.005 .007 .0056;.005 .0077 -.0045;.005 .0083 .0032;.005 .0087 -.002;.005 .0089 .0006;.005 .0089 .0006;.005 .009 0]
    s1_c.faces=[ 19,21,45;45,21,43;22,20,44;18,44,20;44,18,41;16,41,18;41,16,39;14,39,16;39,14,37;12,37,14;37,12,35;10,35,12;35,10,33;8,33,10;33,8,31;6,31,8;31,6,29;4,29,6;29,4,27;2,27,4;27,2,25;0,25,2;25,0,23;1,23,0;23,1,24;3,24,1;24,3,26;5,26,3;26,5,28;7,28,5;28,7,30;9,30,7;30,9,32;11,32,9;32,11,34;13,34,11;34,13,36;15,36,13;36,15,38;17,38,15;38,17,40;19,40,17;40,19,42;45,42,19 ]+1;
    s1_c.facecolor=ones(3,1)-color;

    s2_c.vertices=10*[0 -.0089 .0006;0 -.0087 -.002;0 -.0083 .0032;0 -.0077 -.0045;0 -.007 .0056;0 -.0061 -.0065;0 -.005 .0074;0 -.0039 -.0081;0 -.0026 .0086;0 -.0013 -.0088;0 0 .009;0 .0013 -.0088;0 .0026 .0086;0 .0039 -.0081;0 .005 .0074;0 .0061 -.0065;0 .007 .0056;0 .0077 -.0045;0 .0083 .0032;0 .0087 -.002;0 .0089 .0006;0 .009 0];
    s2_c.faces=[21,0,20;2,20,0;20,2,18;4,18,2;18,4,16;6,16,4;16,6,14;8,14,6;14,8,12;10,12,8;11,9,7;17,15,13;21,19,0;3,0,19;0,3,1;13,11,17;7,17,11;17,7,19;5,19,7;19,5,3]+1; 
    s2_c.facecolor=ones(3,1)-color;
    s2_c.edgecolor=ones(3,1)-color;

    s3_c.vertices=10*[.0049 -.0089 .0006;.0049 -.0087 -.002;.0049 -.0083 .0032;.0049 -.0077 -.0045;.005 -.007 .0056;.005 -.0061 -.0065;.005 -.005 .0074;.005 -.0039 -.0081;.005 -.0026 .0086;.005 -.0013 -.0088;.005 0 .009;.005 .0013 -.0088;.005 .0026 .0086;.005 .0039 -.0081;.005 .005 .0074;.005 .0061 -.0065;.005 .007 .0056;.005 .0077 -.0045;.005 .0083 .0032;.005 .0087 -.002;.005 .0089 .0006;.005 .009 0];
    s3_c.faces=[21,0,19;1,19,0;19,1,17;3,17,1;17,3,15;5,15,3;15,5,13;7,13,5;13,7,11;9,11,7;14,12,0;10,0,12;16,14,18;0,18,14;18,0,20;21,20,0;4,2,6;0,6,2;6,0,8;10,8,0;]+1; 
    s3_c.facecolor=ones(3,1)-color;
    s3_c.edgecolor=ones(3,1)-color;
    
    s1_c.vertices(:,1)=s1_c.vertices(:,1)+0.16;
    s2_c.vertices(:,1)=s2_c.vertices(:,1)+0.16;
    s3_c.vertices(:,1)=s3_c.vertices(:,1)+0.16; 
    
    
    s1_c.vertices(:,2)=s1_c.vertices(:,2)-0.16;
    s2_c.vertices(:,2)=s2_c.vertices(:,2)-0.16;
    s3_c.vertices(:,2)=s3_c.vertices(:,2)-0.16; 
    
    s1_d.vertices=10*[0 -.0089 .0006;0 -.0087 -.002;0 -.0083 .0032;0 -.0077 -.0045;0 -.007 .0056;0 -.0061 -.0065;0 -.005 .0074;0 -.0039 -.0081;0 -.0026 .0086;0 -.0013 -.0088;0 0 .009;0 .0013 -.0088;0 .0026 .0086;0 .0039 -.0081;0 .005 .0074;0 .0061 -.0065;0 .007 .0056;0 .0077 -.0045;0 .0083 .0032;0 .0087 -.002;0 .0089 .0006;0 .009 0;0 .009 0;.005 -.0089 .0006;.005 -.0087 -.002;.005 -.0083 .0032;.005 -.0077 -.0045;.005 -.007 .0056;.005 -.0061 -.0065;.005 -.005 .0074;.005 -.0039 -.0081;.005 -.0026 .0086;.005 -.0013 -.0088;.005 0 .009;.005 .0013 -.0088;.005 .0026 .0086;.005 .0039 -.0081;.005 .005 .0074;.005 .0061 -.0065;.005 .007 .0056;.005 .0077 -.0045;.005 .0083 .0032;.005 .0087 -.002;.005 .0089 .0006;.005 .0089 .0006;.005 .009 0]
    s1_d.faces=[ 19,21,45;45,21,43;22,20,44;18,44,20;44,18,41;16,41,18;41,16,39;14,39,16;39,14,37;12,37,14;37,12,35;10,35,12;35,10,33;8,33,10;33,8,31;6,31,8;31,6,29;4,29,6;29,4,27;2,27,4;27,2,25;0,25,2;25,0,23;1,23,0;23,1,24;3,24,1;24,3,26;5,26,3;26,5,28;7,28,5;28,7,30;9,30,7;30,9,32;11,32,9;32,11,34;13,34,11;34,13,36;15,36,13;36,15,38;17,38,15;38,17,40;19,40,17;40,19,42;45,42,19 ]+1;
    s1_d.facecolor=ones(3,1)-color;

    s2_d.vertices=10*[0 -.0089 .0006;0 -.0087 -.002;0 -.0083 .0032;0 -.0077 -.0045;0 -.007 .0056;0 -.0061 -.0065;0 -.005 .0074;0 -.0039 -.0081;0 -.0026 .0086;0 -.0013 -.0088;0 0 .009;0 .0013 -.0088;0 .0026 .0086;0 .0039 -.0081;0 .005 .0074;0 .0061 -.0065;0 .007 .0056;0 .0077 -.0045;0 .0083 .0032;0 .0087 -.002;0 .0089 .0006;0 .009 0];
    s2_d.faces=[21,0,20;2,20,0;20,2,18;4,18,2;18,4,16;6,16,4;16,6,14;8,14,6;14,8,12;10,12,8;11,9,7;17,15,13;21,19,0;3,0,19;0,3,1;13,11,17;7,17,11;17,7,19;5,19,7;19,5,3]+1; 
    s2_d.facecolor=ones(3,1)-color;
    s2_d.edgecolor=ones(3,1)-color;

    s3_d.vertices=10*[.0049 -.0089 .0006;.0049 -.0087 -.002;.0049 -.0083 .0032;.0049 -.0077 -.0045;.005 -.007 .0056;.005 -.0061 -.0065;.005 -.005 .0074;.005 -.0039 -.0081;.005 -.0026 .0086;.005 -.0013 -.0088;.005 0 .009;.005 .0013 -.0088;.005 .0026 .0086;.005 .0039 -.0081;.005 .005 .0074;.005 .0061 -.0065;.005 .007 .0056;.005 .0077 -.0045;.005 .0083 .0032;.005 .0087 -.002;.005 .0089 .0006;.005 .009 0];
    s3_d.faces=[21,0,19;1,19,0;19,1,17;3,17,1;17,3,15;5,15,3;15,5,13;7,13,5;13,7,11;9,11,7;14,12,0;10,0,12;16,14,18;0,18,14;18,0,20;21,20,0;4,2,6;0,6,2;6,0,8;10,8,0;]+1; 
    s3_d.facecolor=ones(3,1)-color;
    s3_d.edgecolor=ones(3,1)-color;
    
    s1_d.vertices(:,1)=s1_d.vertices(:,1)-0.21;
    s2_d.vertices(:,1)=s2_d.vertices(:,1)-0.21;
    s3_d.vertices(:,1)=s3_d.vertices(:,1)-0.21; 
    
    s1_d.vertices(:,2)=s1_d.vertices(:,2)-0.16;
    s2_d.vertices(:,2)=s2_d.vertices(:,2)-0.16;
    s3_d.vertices(:,2)=s3_d.vertices(:,2)-0.16; 
    %%

    c1.vertices= 10*[ -.0149 0 .02;-.0149 .015 .02;.015 0 .02;.015 .015 .02 ];
    c1.faces =[ 2,3,0;1,0,3 ] +1;
    c1.facecolor=color;

    c2.vertices=10*[ .015 -.015 0;.015 -.015 .02;.015 0 .02;.015 .0149 0;.015 .0149 .02 ];
    c2.faces=[ 1,0,2;3,2,0;2,3,4 ]+1; 
    c2.facecolor=color;

    c3.vertices=10*[-.0149 -.015 0;-.015 -.015 .02;.015 -.015 0;.015 -.015 .02 ];
    c3.faces=[ 3,1,2;0,2,1 ]+1; 
    c3.facecolor=color;

    c4.vertices=10*[ -.0149 -.015 0;-.0149 -.015 .02;-.0149 0 .02;-.0149 .015 0;-.0149 .015 .02 ]; 
    c4.faces=[ 4,3,2;0,2,3;2,0,1 ]+1; 
    c4.facecolor=color;

    c5.vertices=10*[ -.0162 -.0087 .023;-.0162 0 .023;-.016 -.0112 .023;-.0154 -.0137 .023;-.0144 -.0161 .023;-.0131 -.0182 .023;-.0114 -.0202 .023;-.0095 -.0218 .023;-.0073 -.0232 .023;-.005 -.0241 .023;-.0025 -.0247 .023;0 -.0249 .023;.0025 -.0247 .023;.005 -.0241 .023;.0073 -.0232 .023;.0095 -.0218 .023;.0114 -.0202 .023;.0131 -.0182 .023;.0144 -.0161 .023;.0154 -.0137 .023;.016 -.0112 .023;.0162 -.0087 .023;.0162 0 .023 ];
    c5.faces=[ 11,12,4;22,1,21;0,21,1;21,0,20;18,20,0;20,18,19;4,5,6;3,4,2;12,2,4;2,12,0;13,0,12;0,13,14;10,11,9;4,9,11;9,4,8;6,8,4;8,6,7;17,18,16;0,16,18;16,0,15;14,15,0 ]+1;
    c5.facecolor=color;

    c6.vertices=10*[ .015 -.015 .02;.015 0 .02;.0154 -.0137 .02;.016 -.0112 .02;.0162 -.0087 .02;.0162 0 .02 ];
    c6.faces=[ 2,0,1;3,2,4;1,4,2;4,1,5 ]+1;
    c6.facecolor=color;

    c7.vertices=10*[ -.0162 0 .02;-.0162 0 .023;-.0149 0 .02;.015 0 .02;.0162 0 .02;.0162 0 .023 ];
    c7.faces=[ 0,1,2;5,2,1;2,5,3;4,3,5 ]+1;
    c7.facecolor=color;

    c8.vertices=10*[ -.0162 -.0087 .02;-.0162 -.0087 .023;-.0162 0 .02;-.0162 0 .023 ];
    c8.faces=[ 1,3,0;2,0,3 ]+1;
    c8.facecolor=color;

    c9.vertices=10*[ -.0162 -.0087 .02;-.0162 -.0087 .023;-.016 -.0112 .02;-.016 -.0112 .023;-.0154 -.0137 .02;-.0154 -.0137 .023;-.015 -.015 .02;-.0144 -.0161 .02;-.0144 -.0161 .023;-.0131 -.0182 .02;-.0131 -.0182 .023;-.0114 -.0202 .02;-.0114 -.0202 .023;-.0095 -.0218 .02;-.0095 -.0218 .023;-.0073 -.0232 .02;-.0073 -.0232 .023;-.005 -.0241 .02;-.005 -.0241 .023;-.0025 -.0247 .02;-.0025 -.0247 .023;0 -.0249 .02;0 -.0249 .023;.0025 -.0247 .02;.0025 -.0247 .023;.005 -.0241 .02;.005 -.0241 .023;.0073 -.0232 .02;.0073 -.0232 .023;.0095 -.0218 .02;.0095 -.0218 .023;.0114 -.0202 .02;.0114 -.0202 .023;.0131 -.0182 .02;.0131 -.0182 .023;.0144 -.0161 .02;.0144 -.0161 .023;.015 -.015 .02;.0154 -.0137 .02;.0154 -.0137 .023;.016 -.0112 .02;.016 -.0112 .023;.0162 -.0087 .02;.0162 -.0087 .023 ];
    c9.faces=[ 1,0,2;1,2,3;4,3,2;3,4,5;6,5,4;5,6,8;6,7,8;9,8,7;8,9,10;11,10,9;10,11,12;13,12,11;12,13,14;15,14,13;14,15,16;17,16,15;16,17,18;19,18,17;18,19,20;21,20,19;20,21,22;23,22,21;22,23,24;25,24,23;24,25,26;27,26,25;26,27,28;29,28,27;28,29,30;31,30,29;30,31,32;33,32,31;32,33,34;35,34,33;34,35,36;37,36,35;36,37,39;37,38,39;40,39,38;39,40,41;42,41,40;41,42,43 ]+1;
    c9.facecolor=color;

    c10.vertices=10*[ .0162 -.0087 .02;.0162 -.0087 .023;.0162 0 .02;.0162 0 .023 ];
    c10.faces=[ 3,1,2;0,2,1 ]+1;
    c10.facecolor=color;

    c11.vertices=10*[ -.015 -.015 .02;-.0144 -.0161 .02;-.0131 -.0182 .02;-.0114 -.0202 .02;-.0095 -.0218 .02;-.0073 -.0232 .02;-.005 -.0241 .02;-.0025 -.0247 .02;0 -.0249 .02;.0025 -.0247 .02;.005 -.0241 .02;.0073 -.0232 .02;.0095 -.0218 .02;.0114 -.0202 .02;.0131 -.0182 .02;.0144 -.0161 .02;.015 -.015 .02 ];
    c11.faces=[ 0,16,1;15,1,16;1,15,2;14,2,15;2,14,3;13,3,14;3,13,4;12,4,13;4,12,5;11,5,12;5,11,6;10,6,11;6,10,7;9,7,10;7,9,8 ]+1; 
    c11.facecolor=color;

    c12.vertices=10*[ -.0162 -.0087 .02;-.0162 0 .02;-.016 -.0112 .02;-.0154 -.0137 .02;-.015 -.015 .02;-.0149 0 .02 ];
    c12.faces=[ 1,5,0;4,0,5;0,4,2;3,2,4 ]+1;
    c12.facecolor=color;

    c13.vertices=10*[ -.0149 -.015 0;-.0149 .015 0;.015 -.015 0;.015 .015 0 ];
    c13.faces=[ 3,2,1;0,1,2 ]+1;
    c13.facecolor=color;

    c14.vertices=10*[ -.0149 .015 0;-.0149 .015 .02;.015 .015 0;.015 .015 .02 ];
    c14.faces=[ 1,3,0;2,0,3 ]+1;
    c14.facecolor=color;
    
    
    S3_A=patch(s3_a)
    S2_A=patch(s2_a)
    S1_A=patch(s1_a)

    S3_B=patch(s3_b)
    S2_B=patch(s2_b)
    S1_B=patch(s1_b) 

    S3_C=patch(s3_c)
    S2_C=patch(s2_c)
    S1_C=patch(s1_c)

    S3_D=patch(s3_d)
    S2_D=patch(s2_d)
    S1_D=patch(s1_d)

    C1=patch(c1)
    C2=patch(c2)
    C3=patch(c3)
    C4=patch(c4)
    C5=patch(c5)
    C6=patch(c6)
    C7=patch(c7)
    C8=patch(c8)
    C9=patch(c9)
    C10=patch(c10)
    C11=patch(c11)
    C12=patch(c12)
    C13=patch(c13)
    C14=patch(c14)    
    
  hT1S = plotTrama([cos(-pi/2) -sin(-pi/2) 0;sin(-pi/2) cos(-pi/2) 0; 0 0 1],[0;0;0.25]);  
    
  Trama=[ cos(theta0+(pi/2)) -sin(theta0+(pi/2)) 0 x0;
            sin(theta0+(pi/2))  cos(theta0+(pi/2)) 0 y0;
                   0          0  1  z0;
                   0          0  0  1];
               
   temp=hgtransform;

   set(C1,'parent',temp);
   set(C2,'parent',temp);
   set(C3,'parent',temp);
   set(C4,'parent',temp);
   set(C5,'parent',temp);
   set(C6,'parent',temp);
   set(C7,'parent',temp);
   set(C8,'parent',temp);
   set(C9,'parent',temp);
   set(C10,'parent',temp);
   set(C11,'parent',temp);
   set(C12,'parent',temp);
   set(C13,'parent',temp);
   set(C14,'parent',temp);
   
   set(S3_A,'parent',temp);
   set(S2_A,'parent',temp);
   set(S1_A,'parent',temp);
   set(S3_B,'parent',temp);
   set(S2_B,'parent',temp);
   set(S1_B,'parent',temp);
   set(S3_C,'parent',temp);
   set(S2_C,'parent',temp);
   set(S1_C,'parent',temp);
   set(S3_D,'parent',temp);
   set(S2_D,'parent',temp);
   set(S1_D,'parent',temp);
   
   set(hT1S,'parent',temp);
   
   R=struct('Body',temp);
   set(R.Body,'Matrix',Trama);
end