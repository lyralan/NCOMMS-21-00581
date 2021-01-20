close all
clear all
districts = shaperead('India_subregion/IND_adm/IND_adm2.shp');

load('Other/scatter.mat')
scatter(x,y)
xlabel('Emissions per unit of crop production');
ylabel('Premature deaths per unit of emissions');
hold on
for i = 1:19
    txt = districts(i+138).NAME_2;
    plot(x(i),y(i),'o','MarkerEdgeColor','blue','MarkerFaceColor',[.8 .8 1]);
    text(x(i),y(i),txt);
end
legend('Haryana districts')
for i = 1:17
    txt = districts(i+395).NAME_2;
    plot(x(i+19),y(i+19),'o','MarkerEdgeColor','red','MarkerFaceColor',[1 .6 .6]);
    text(x(i+19),y(i+19),txt);
end
legend('Punjab districts')
ylim([0 4])    
axescenter
path = ['/Users/ruoyulan/Desktop/ACP/emi_crop_ratio_scatter.jpg'];

%print('-djpeg', '-r600', path);
%savefig('/Users/ruoyulan/Desktop/ACP/emi_crop_ratio_scatter.fig');
