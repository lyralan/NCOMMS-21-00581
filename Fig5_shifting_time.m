clear all
close all

imon = 4;
apr = zeros(8,1);
load(sprintf('Exposure_india_1hrly/exp_1h_bk_%2.2i.mat',imon));
apr(1) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_ori_%2.2i.mat',imon));
apr(2) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_1h_%2.2i.mat',imon));
apr(3) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_2h_%2.2i.mat',imon));
apr(4) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_3h_%2.2i.mat',imon));
apr(5) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_4h_%2.2i.mat',imon));
apr(6) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_5h_%2.2i.mat',imon));
apr(7) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_6h_%2.2i.mat',imon));
apr(8) = nansum(nansum(nansum(nansum(agri_exp))));


imon = 5 
may = zeros(8,1);
load(sprintf('Exposure_india_1hrly/exp_1h_bk_%2.2i.mat',imon));
may(1) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_ori_%2.2i.mat',imon));
may(2) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_1h_%2.2i.mat',imon));
may(3) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_2h_%2.2i.mat',imon));
may(4) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_3h_%2.2i.mat',imon));
may(5) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_4h_%2.2i.mat',imon));
may(6) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_5h_%2.2i.mat',imon));
may(7) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_6h_%2.2i.mat',imon));
may(8) = nansum(nansum(nansum(nansum(agri_exp))));


imon = 10
oct = zeros(8,1);
load(sprintf('Exposure_india_1hrly/exp_1h_bk_%2.2i.mat',imon));
oct(1) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_ori_%2.2i.mat',imon));
oct(2) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_1h_%2.2i.mat',imon));
oct(3) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_2h_%2.2i.mat',imon));
oct(4) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_3h_%2.2i.mat',imon));
oct(5) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_4h_%2.2i.mat',imon));
oct(6) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_5h_%2.2i.mat',imon));
oct(7) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_6h_%2.2i.mat',imon));
oct(8) = nansum(nansum(nansum(nansum(agri_exp))));


imon = 11
nov = zeros(5,1);
load(sprintf('Exposure_india_1hrly/exp_1h_bk_%2.2i.mat',imon));
nov(1) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_ori_%2.2i.mat',imon));
nov(2) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_1h_%2.2i.mat',imon));
nov(3) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_2h_%2.2i.mat',imon));
nov(4) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_3h_%2.2i.mat',imon));
nov(5) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_4h_%2.2i.mat',imon));
nov(6) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_5h_%2.2i.mat',imon));
nov(7) = nansum(nansum(nansum(nansum(agri_exp))));
load(sprintf('Exposure_india_1hrly/exp_6h_%2.2i.mat',imon));
nov(8) = nansum(nansum(nansum(nansum(agri_exp))));

%1hbk
april(7) = (apr(1)-apr(2))/apr(2)*100;
mayy(7) = (may(1)-may(2))/may(2)*100;
october(7) = (oct(1)-oct(2))/oct(2)*100;
november(7) = (nov(1)-nov(2))/nov(2)*100;
%1hfw
april(6) = -(apr(3)-apr(2))/apr(2)*100;
mayy(6) = -(may(3)-may(2))/may(2)*100;
october(6) = (oct(3)-oct(2))/oct(2)*100;
november(6) = (nov(3)-nov(2))/nov(2)*100;
%2hfw
april(5) = (apr(4)-apr(2))/apr(2)*100;
mayy(5) = (may(4)-may(2))/may(2)*100;
october(5) = (oct(4)-oct(2))/oct(2)*100;
november(5) = (nov(4)-nov(2))/nov(2)*100;
%3hfw
april(4) = (apr(5)-apr(2))/apr(2)*100;
mayy(4) = (may(5)-may(2))/may(2)*100;
october(4) = (oct(5)-oct(2))/oct(2)*100;
november(4) = (nov(5)-nov(2))/nov(2)*100;
%4hfw
april(3) = (apr(6)-apr(2))/apr(2)*100;
mayy(3) = (may(6)-may(2))/may(2)*100;
october(3) = (oct(6)-oct(2))/oct(2)*100;
november(3) = (nov(6)-nov(2))/nov(2)*100;
%5hfw
april(2) = (apr(7)-apr(2))/apr(2)*100;
mayy(2) = (may(7)-may(2))/may(2)*100;
october(2) = (oct(7)-oct(2))/oct(2)*100;
november(2) = (nov(7)-nov(2))/nov(2)*100;
%6hfw
april(1) = (apr(8)-apr(2))/apr(2)*100;
mayy(1) = (may(8)-may(2))/may(2)*100;
october(1) = (oct(8)-oct(2))/oct(2)*100;
november(1) = (nov(8)-nov(2))/nov(2)*100;

%bar([1:4],[0.4*apr,0.4*may,0.4*oct,0.4*nov]');
bar([april;mayy;october;november]);
legend('Burning 6 hours earlier',Burning 5 hours earlier','Burning 4 hours earlier','Burning 3 hours earlier','Burning 2 hours earlier','Burning 1 hour earlier','Burning 1 hour later');
xticks([1 2 3 4]);
xticklabels({'April','May','October','November'});
ylabel('Change of contribution to air quality impacts (%)');
path = ['/Users/ruoyulan/Desktop/ACP/Change_percentage_1_5.jpg'];
%print('-djpeg', '-r600', path);
%savefig('/Users/ruoyulan/Desktop/ACP/Change_percentage_1_5.fig');
%close