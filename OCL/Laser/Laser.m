%%
clear,clc,close all

distance=[20 30 40 50 60]*25.5; %inches

width=[7.52 10.03 12.23 14.05 17.14 ]; %ml
heigth=[4.53 5.33 5.91 7.98 9.21];%ml
AreaGoal=8.45 *7.44
area=width.*heigth;

figure, hold on
plot(distance, area,'r','linewidth',2.0)
plot(distance, area,'s','markersize',10,'MarkerEdgeColor','r','MarkerFaceColor','b','linewidth',1.2)
plot([510 1530],[AreaGoal AreaGoal],'k','linewidth',2.0)

Tam_Fuente=14;
h_y=ylabel('Area [mm^{2}]');
h_x=xlabel('Distance [mm]');
set(h_y,'FontSize',Tam_Fuente)
set(h_x,'FontSize',Tam_Fuente)
set(gca,'FontSize',Tam_Fuente)
axis([450 1600 20 160]);
set(gca,'xtick',distance,'xticklabel',distance)
set(gca,'ytick',20:20:160,'yticklabel',20:20:160)
set(gcf,'windowstyle','docked')
% axis square
set(gca,'Box','on')
grid on
% set(lhandle,'Interpreter','latex')
set(gcf,'windowstyle','docked')
saveas(gcf,'areaVSdistance','png');