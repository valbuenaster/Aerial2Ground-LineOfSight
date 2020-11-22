function hT = plotTrama(R,P0,escala)
% PLOTVECTOR Dibuja una trama con origen en P0 y orientaci�n R.
% Ejemplo:
% hT = plotTrama(eye(3),[0;0;0])
% TOOLBOXROBOTUN para aprendizaje de los fundamentos de la rob�tica.
% Sep 2007
% Modificado 2007-09-28.
% Creado por Ing. Jaime Andr�s Castillo Le�n.
% UNIVERSIDAD NACIONAL DE COLOMBIA
% MAESTRIA EN AUTOMATIZACION INDUSTRIAL
%
if nargin == 2
escala = 1;
elseif nargin > 3
error('Argumentos de entrada no validos')
end
if ishold(gca)
HOLD_ON = 1;
else
HOLD_ON = 0;
end
hEjeX = plotVector(P0,escala*R(:,1),'r',3.0);hold on
hEjeY = plotVector(P0,escala*R(:,2),'g',3.0);
hEjeZ = plotVector(P0,escala*R(:,3),'b',3.0);
if HOLD_ON == 0
hold off
end
hT = [hEjeX hEjeY hEjeZ];