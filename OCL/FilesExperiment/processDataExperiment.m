%%
clear,clc,close all

pointerT1=fopen('TestFileONE','r');
pointerT1r=fopen('TestFileONE_Retrieved','r' );

[M1 count1]=fscanf(pointerT1,'%s');
[M1r count1r]=fscanf(pointerT1r,'%s');

M1b=[double(M1) 0 0;double(M1r)];

Cmp1=M1b(1,:)-M1b(2,:);

DiffBites1=size(Cmp1,2)-size(find(Cmp1==0),2)
%%
pointerT2=fopen('TestFileTWO','r');
pointerT2r=fopen('TestFileTWO_Retrieved','r' );

[M2 count2]=fscanf(pointerT2,'%s');
[M2r count2r]=fscanf(pointerT2r,'%s');

M2b=[double(M2) ;double(M2r)];

Cmp2=M2b(1,:)-M2b(2,:);

DiffBites2=size(Cmp2,2)-size(find(Cmp2==0),2)
%%
pointerT3=fopen('TestFileTHREE','r');
pointerT3r=fopen('TestFileTHREE_Retrieved','r' );

[M3 count3]=fscanf(pointerT3,'%s');
[M3r count3r]=fscanf(pointerT3r,'%s');

M3b=[double(M3) ;double(M3r)];

Cmp3=M3b(1,:)-M3b(2,:);

DiffBites3=size(Cmp3,2)-size(find(Cmp3==0),2)
%%
pointerT4=fopen('TestFileFOUR','r');
pointerT4r=fopen('TestFileFOUR_Retrieved','r' );

[M4 count4]=fscanf(pointerT4,'%s');
[M4r count4r]=fscanf(pointerT4r,'%s');

M4b=[double(M4);double(M4r)];

Cmp4=M4b(1,:)-M4b(2,:);

DiffBites4=size(Cmp4,2)-size(find(Cmp4==0),2)
%%
pointerT5=fopen('TestFileFIVE','r');
pointerT5r=fopen('TestFileFIVE_Retrieved','r' );

[M5 count5]=fscanf(pointerT5,'%s');
[M5r count5r]=fscanf(pointerT5r,'%s');

M5b=[double(M5) 0 0;double(M5r)];

Cmp5=M5b(1,:)-M5b(2,:);

DiffBites5=size(Cmp5,2)-size(find(Cmp5==0),2)
%%
pointerT6=fopen('TestFileSIX','r');
pointerT6r=fopen('TestFileSIX_Retrieved','r' );

[M6 count6]=fscanf(pointerT6,'%s');
[M6r count6r]=fscanf(pointerT6r,'%s');

M6b=[double(M6) ;double(M6r)];

Cmp6=M6b(1,:)-M6b(2,:);

DiffBites6=size(Cmp6,2)-size(find(Cmp6==0),2)
%%
pointerT7=fopen('TestFileSEVEN','r');
pointerT7r=fopen('TestFileSEVEN_Retrieved','r' );

[M7 count7]=fscanf(pointerT7,'%s');
[M7r count7r]=fscanf(pointerT7r,'%s');

M7b=[double(M7);double(M7r)];

Cmp7=M7b(1,:)-M7b(2,:);

DiffBites7=size(Cmp7,2)-size(find(Cmp7==0),2)
%%
pointerT8=fopen('TestFileEIGHT','r');
pointerT8r=fopen('TestFileEIGHT_Retrieved','r' );

[M8 count8]=fscanf(pointerT8,'%s');
[M8r count8r]=fscanf(pointerT8r,'%s');

M8b=[double(M8) ;double(M8r)];

Cmp8=M8b(1,:)-M8b(2,:);

DiffBites8=size(Cmp8,2)-size(find(Cmp8==0),2)
%%
pointerT9=fopen('TestFileNINE','r');
pointerT9r=fopen('TestFileNINE_Retrieved','r' );

[M9 count9]=fscanf(pointerT9,'%s');
[M9r count9r]=fscanf(pointerT9r,'%s');

M9b=[double(M9) 0;double(M9r)];

Cmp9=M9b(1,:)-M9b(2,:);

DiffBites9=size(Cmp9,2)-size(find(Cmp9==0),2)
%%
pointerT10=fopen('TestFileTEN','r');
pointerT10r=fopen('TestFileTEN_Retrieved','r' );

[M10 count10]=fscanf(pointerT10,'%s');
[M10r count10r]=fscanf(pointerT10r,'%s');

M10b=[double(M10) ;double(M10r)];

Cmp10=M10b(1,:)-M10b(2,:);

DiffBites10=size(Cmp10,2)-size(find(Cmp10==0),2)
%%
pointerT11=fopen('TestFileELEVEN','r');
pointerT11r=fopen('TestFileELEVEN_Retrieved','r' );

[M11 count11]=fscanf(pointerT11,'%s');
[M11r count11r]=fscanf(pointerT11r,'%s');

M11b=[double(M11);double(M11r)];

Cmp11=M11b(1,:)-M11b(2,:);

DiffBites1=size(Cmp1,2)-size(find(Cmp1==0),2)
%%
% pointerT=fopen('TestFile','r');
% pointerTr=fopen('TestFile_Retrieved','r' );
% 
% [M count]=fscanf(pointerT,'%s');
% [Mr countr]=fscanf(pointerTr,'%s');
% 
% Mb=[double(M) ;double(Mr) zeros(1,count - countr)];
% 
% Cmp=Mb(1,:)-Mb(2,:);
% 
% DiffBites=size(Cmp,2)-size(find(Cmp==0),2)
