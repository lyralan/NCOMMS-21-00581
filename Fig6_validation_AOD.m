clear all
close all
load('Validation_MODIS/nested_lon_lat.mat');
load('Validation_MODIS/india_mask.mat')
load('Validation_MODIS/Model_PM25/CH_PM25_2009.mat')
load('Validation_MODIS/Model_PM25/MODIS/MODIS_PM25_2009.mat', 'PM25_2009_05x0666')
PM25_fw = PM25;
PM25_fw(area) = NaN;
PM25_md = PM25_2009_05x0666;
PM25_md(area) = NaN;


subplot(1,2,1)
h = pcolor(latt([32:103],[1:46]),lonn([32:103],[1:46]),PM25_fw([32:103],[1:46])); set(h, 'EdgeColor', 'none');
hold on
borders('Countries', 'Color', 'k')
caxis([0 120])
cbh=colorbar;
set(cbh,'YTick',[0:20:120])
set(get(cbh,'title'),'string','Surface PM_{2.5} (µg/m^{3})','Rotation',270.0);
shading interp 
map = brewermap(200,'YlOrRd'); 
colormap(map)
geoshow('India_SHP/INDIA.shp', 'FaceAlpha',0, 'LineWidth',1);
xlabel('longitude (degrees east)');
ylabel('latitude (degrees north)');

subplot(1,2,2)
h = pcolor(latt([32:103],[1:46]),lonn([32:103],[1:46]),PM25_md([32:103],[1:46])); set(h, 'EdgeColor', 'none');
hold on
borders('Countries', 'Color', 'k')
caxis([0 120])
cbh=colorbar;
set(cbh,'YTick',[0:20:120])
set(get(cbh,'title'),'string','Surface PM_{2.5} (µg/m^{3})','Rotation',270.0);
map = brewermap(200,'YlOrRd'); 
colormap(map)
geoshow('India_SHP/INDIA.shp', 'FaceAlpha',0, 'LineWidth',1);
xlabel('longitude (degrees east)');
path = ['/Users/ruoyulan/Desktop/ACP/Valitation_MODIS.jpg'];
%print('-djpeg', '-r600', path);
%savefig('/Users/ruoyulan/Desktop/ACP/Valitation_MODIS.fig');
