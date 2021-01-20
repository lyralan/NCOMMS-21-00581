clear all
close all
load('Other/India_lon_lat.mat')
subplot(2,2,1)
load('Rate/reduction_state_s1.mat');
load('Other/mask_area.mat');
rate_space(area) = nan;
h = pcolor(lat,lon,-rate_space);
set(h, 'EdgeColor', 'none');
shading interp 
map = flipdim(brewermap(12,'PuBu'),1); 
colormap(map)
caxis([-0.04 0]) 
geoshow('India_SHP/INDIA.shp', 'FaceAlpha',0, 'LineWidth',0.5);
cb = colorbar
borders('Countries', 'Color', 'k')
ylabel('Latitude ({\circ}N)');
set(gca,'xticklabel',{[]})

subplot(2,2,2)
load('Rate/reduction_district_s1.mat');
districts = shaperead('India_subregion/IND_adm/IND_adm2.shp');
map = brewermap(1000,'PuBu'); 
Nan_number = find(isnan(rate));
rate(Nan_number) = 0;
rate_num = rate./nanmax(rate);
for i = 1:594
  mapshow(districts(i),'FaceColor',map(max(1, round(rate_num(i) * 1000)),:),'LineWidth',0.1);
end
xlim([73, 83])
ylim([23, 33])
set(gca,'xticklabel',{[]})

cb = colorbar;
set(get(cb,'title'),'string','Reduction of contribution (%)','Rotation',270.0);
map = flipdim(brewermap(12,'PuBu'),1); 
colormap(map)
caxis([-0.01 0])
borders('Countries', 'Color', 'k')
geoshow('India_subregion/IND_adm/IND_adm1.shp', 'FaceAlpha',0, 'LineWidth',1);
geoshow('India_SHP/india-border.shp', 'FaceAlpha',0, 'LineWidth',1);
borders('Countries', 'Color', 'k')


subplot(2,2,3)
load('Rate/reduction_state_s2.mat');
load('Other/mask_area.mat');
rate_space(area) = nan;
h = pcolor(lat,lon,-rate_space);
set(h, 'EdgeColor', 'none');
shading interp 
map = flipdim(brewermap(12,'PuBu'),1); 
colormap(map)
caxis([-0.6 0]) % sets colorbar limits 
geoshow('India_SHP/INDIA.shp', 'FaceAlpha',0, 'LineWidth',0.5);
borders('Countries', 'Color', 'k')
cb = colorbar
ylabel('Latitude ({\circ}N)');
xlabel('Longitude ({\circ}E)');
subplot(2,2,4)
load('Rate/reduction_district_s2.mat');
districts = shaperead('India_subregion/IND_adm/IND_adm2.shp');
map = brewermap(1000,'PuBu'); 
Nan_number = find(isnan(rate));
rate(Nan_number) = 0;
rate_num = rate./nanmax(rate);
for i = 1:594
  mapshow(districts(i),'FaceColor',map(max(1, round(rate_num(i) * 1000)),:),'LineWidth',0.1);
end
xlim([73, 83])
ylim([23, 33])
xlabel('Longitude ({\circ}E)');
cb = colorbar;
set(get(cb,'title'),'string','Reduction of contribution (%)','Rotation',270.0);
map = flipdim(brewermap(12,'PuBu'),1); 
colormap(map)
caxis([-0.2 0])
borders('Countries', 'Color', 'k')
geoshow('India_subregion/IND_adm/IND_adm1.shp', 'FaceAlpha',0, 'LineWidth',1);
geoshow('India_SHP/india-border.shp', 'FaceAlpha',0, 'LineWidth',1);
borders('Countries', 'Color', 'k')
path = ['/Users/ruoyulan/Desktop/ACP/Figure_5_state_and_district.jpg'];
%print('-djpeg', '-r600', path);
%savefig('/Users/ruoyulan/Desktop/ACP/Figure_5_state_and_district.fig');
