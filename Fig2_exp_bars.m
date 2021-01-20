%Whole India----------
clear all
close all
%load('India_lon_lat.mat');
%plot------------------------------------------
load('Exposure_daily/exp_year_time_series.mat'); 
load('Exposure_daily/exp_year_time_series_OC.mat'); 
india = (exposure_ts + exposure_ts_OC')/1.214e+9/365;
load('Exposure_daily/exp_state_28_time_series.mat'); 
load('Exposure_daily/exp_state_28_time_series_OC.mat'); 
punjab = (exposure_ts_state+exposure_ts_state_OC')/1.214e+9/365;
load('Exposure_daily/exp_state_13_time_series.mat');
load('Exposure_daily/exp_state_13_time_series_OC.mat');
haryana = (exposure_ts_state+exposure_ts_state_OC')/1.214e+9/365;
load('Exposure_daily/exp_state_34_time_series.mat'); 
load('Exposure_daily/exp_state_34_time_series_OC.mat');
uttar = (exposure_ts_state+exposure_ts_state_OC')/1.214e+9/365;
hold on  
days = (31*2+15):(31*3+30+30);
values = 1.2*ones(77,1); 
hh1 = area(days,values,'FaceColor',[0.5 0.5 0.5],'FaceAlpha',0.4,'EdgeColor','none')
days = (31*3+30+30):(31*5+30*4);
values = 1.2*ones(123,1); 
hh2 =area(days,values,'FaceColor',[0.5 0.5 0.5],'FaceAlpha',0.4,'EdgeColor','none')
days = (31*5+30*4):(31*5+30*6+15);
values = 1.2*ones(76,1); 
hh3 =area(days,values,'FaceColor',[0.5 0.5 0.5],'FaceAlpha',0.4,'EdgeColor','none')

h1 = bar(1:365,india);
h2 = bar(1:365,punjab+haryana+uttar);
h3 = bar(1:365,haryana+uttar);
h4 = bar(1:365,uttar);
set(get(get(hh1,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
set(get(get(hh2,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
set(get(get(hh3,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
legend('Whole India','Punjab','Haryana','Uttar Pradesh');
xticks([15 15+31*1 15+31*2 15+31*2+30 15+31*3+30 15+31*3+30*2 15+31*4+30*2 15+31*4+30*3 15+31*5+30*3 15+31*5+30*4 15+31*5+30*5 15+31*5+30*6]);
xticklabels({'Jan 15','Feb 15','Mar 15','Apr 15','May 15','Jun 15','Jul 15','Aug 15','Sep 15','Oct 15','Nov 15','Dec 15 '});
ylabel('Contribution to annual mean population exposure (µg/m^{3})');
%set(gca,'fontweight','bold','fontsize',16);
ylim([0 1.2]);
xlim([0.5 365.5]);
box on
set(gca,'FontSize',16)


path = ['/Users/ruoyulan/Desktop/ACP/Figure_1_bars_BC_OC.jpg'];
%print('-djpeg', '-r600', path);
%savefig('/Users/ruoyulan/Desktop/ACP/figure_1_bars_BC_OC.fig');
    
    