function hV = plotVector(X0,X,color,ancho)
% PLOTVECTOR Dibuja un vector con origen en X0 y cabeza en X, se puede
% definir el color y el ancho de la linea
% Ejemplo:
% hV = plotVector([0;0;0],[5;0;0],'g',4.0)
%
% TOOLBOXROBOTUN para aprendizaje de los fundamentos de la rob�tica.
% Sep 2007
% Creado por Ing. Jaime Andr�s Castillo Le�n.
% UNIVERSIDAD NACIONAL DE COLOMBIA
% MAESTRIA EN AUTOMATIZACION INDUSTRIAL
%
hV = quiver3(X0(1),X0(2),X0(3),...
X(1),X(2),X(3),...
'Color',color,...
'LineWidth',ancho,...
'AutoScaleFactor',0.1,...
'MarkerSize',40);