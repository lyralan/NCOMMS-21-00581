clear all
close all
load('Crop/Fig1_history_crop.mat')
subplot(1,2,1)
mean3 = nanmean(crop_production+crop_residue)*ones(6,1)';
mean2 = nanmean(crop_residue)*ones(6,1)';
mean1 = nanmean(crop_burned)*ones(6,1)';
min3 = min(crop_production+crop_residue)*ones(6,1)';
min2 = min(crop_residue)*ones(6,1)';
min1 = min(crop_burned)*ones(6,1)';
max3 = max(crop_production+crop_residue)*ones(6,1)';
max2 = max(crop_residue)*ones(6,1)';
max1 = max(crop_burned)*ones(6,1)';
h3 = area(crop_production+crop_residue,'LineStyle',':'); hold on
h2 = area(crop_residue,'LineStyle',':');
h1 = area(crop_burned,'LineStyle',':');
legend('Crop Production','Utilized Crop Residue','Crop Residue Burned');
xlim([0.5 14.5])
xticks([1:14]);
xticklabels({'2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016'});
xtickangle(45)
ylabel('Crop Mass (Million Metric Tonnes)');
grid on

subplot(1,2,2)
%figure(2)
RPR = [1.5,1.7,1.5,1.5,0.6,0.4,3.0,2.15];
residue_crops = [121.2,114.14,71.77,27.99,33.04,137.88,11.4,3.8];%.*[0.34,0.29,0.12,0.05,0.03,0.13,0.03,0.01];
production_crops = residue_crops./RPR;
production_crops(1) = 104.3;
production_crops(2) = 93.5;
production_crops = 618.97/669.6408*production_crops;
burned_crops = residue_crops.*[0.43,0.26,0.11,0.03,0.03,0.10,0.03,0.01];
production_crops_ratio = production_crops/sum(production_crops);
residue_crops_ratio = residue_crops/sum(residue_crops);
burned_crops_ratio = burned_crops/sum(burned_crops);
production_w_avg = sum(production_crops.*residue_crops_ratio);
residue_w_avg = sum(residue_crops.*residue_crops_ratio);
burned_w_avg = sum(burned_crops.*burned_crops_ratio);
residue_w_avg_ratio = residue_w_avg/sum(residue_crops);
burned_w_avg_ratio = burned_w_avg/sum(burned_crops);
y = flipdim([[production_crops,production_w_avg];[residue_crops,residue_w_avg];[burned_crops,burned_w_avg]],1);
b = bar([1:8],[y(:,1)';y(:,2)';y(:,3)';y(:,4)';y(:,5)';y(:,6)';y(:,7)';y(:,8)'],'stacked','LineStyle',':');
%ylabel('Crop Mass (Million Metric Tonnes)');
labels={'Residue Burned', 'Utilized Residue','Crop Production'};
grid on
[~, h2] = legend(fliplr(labels),'Location','NorthWest');
colormap = [0.2, 0.3, 0.49; 0.39, 0.47, 0.64; 0.73, 0.83, 0.96];
cmap_cust = colormap;
n = size(h2,1);
MAP = cmap_cust(round(linspace(size(cmap_cust,1),1,n/2)),:); 
xticks([1:8]);
name = {'Rice','Wheat','Coarse cereals','Pulses','Oil seeds','Sugarcane','Cotton','Jute & Mesta'};
xticklabels = name;
xtickangle(45)
for k = (n/2 + 1):n;
  a1 = get(h2(k),'Children');
  set(a1,'FaceColor',MAP(k-n/2,:));
end
path = ['/Users/ruoyulan/Desktop/ACP/crop_ratio.jpg'];
%print('-djpeg', '-r600', path);
%savefig('/Users/ruoyulan/Desktop/ACP/crop_ratio.fig');
