data1 = importdata("!^ESERC bicchiere PLA L=69,5.txt");

data2 = importdata("!^ESERC  PLA pent press L=77,1.txt");

T1 = data1(:,3);
w1 = data1(:,5);

T2 = data2(:,3);
w2 = data2(:,5);

a = 40;
b = 590;
c = b+40;
d = 1170;
e = d + 75;

figure(1)
i=subplot(2, 3, [1 4])
line(T1(a:b),w1(a:b)+0.5,'LineWidth',1,'Color',[0.8500, 0.3250, 0.0980],'LineWidth',1, ...
    'DisplayName','PET tt','LineStyle','-.')
line(T2(a:b),w2(a:b),'LineWidth',1,'DisplayName','PET tq','Color',[0.4660, 0.6740, 0.1880])
ylabel('w')
ylim([-1.6 2]);
yticks([])
xlim([0 200])
xticks([])
ylabel('specific power (W/g)')
set(gca,'FontSize',20)
i.FontName = 'Arial';
box on
annotation('doublearrow',[0.2 0.2],...
    [0.69 0.82]);
annotation('textbox',...
    [0.21 0.68 0.1 0.1],...
    'String',{'0.5 W/g'},...
    'LineStyle','none',...
    'FitBoxToText','off','FontSize',18);
annotation('arrow',[0.2 0.2],...
    [0.85 0.9]);
annotation('textbox',...
    [0.21 0.70 0.2 0.2],...
    'String',{'exo'},...
    'LineStyle','none',...
    'FitBoxToText','off','FontSize',18);
set(gca,'XTick',[0 100 ])


h = subplot(2, 3, [2 5]);
line(T1(c:d),w1(c:d),'LineWidth',1,'Color',[0.8500, 0.3250, 0.0980],'LineWidth',1, ...
    'DisplayName','PET tt','LineStyle','-.')
line(T2(c:d),w2(c:d)+0.2,'LineWidth',1,'DisplayName','PET tq','Color',[0.4660, 0.6740, 0.1880])
set(gca, 'XDir','reverse')
yticks([])
xlabel('T (°C)')
xlim([0 200])
ylim([-1.6 2]);
pos = get(h, 'Position');
posnew = pos; 
posnew(1) = posnew(1) - 0.068; 
set(h, 'Position', posnew);
set(gca,'FontSize',20)
h.FontName = 'Arial';
set(gca,'XTick',[0 100 200])
box on

g = subplot(2, 3, [3 6]);
line(T1(e:end),w1(e:end)+0.3,'LineWidth',1,'Color',[0.8500, 0.3250, 0.0980],'LineWidth',1, ...
    'DisplayName','PLA','LineStyle','-.')
line(T2(e:end),w2(e:end),'LineWidth',1,'DisplayName','PLA tt','Color',[0.4660, 0.6740, 0.1880])
ylim([-1.6 2]);
yticks([])
xlim([0 200])
pos = get(g, 'Position');
posnew = pos; 
posnew(1) = posnew(1) - 0.14; 
set(g, 'Position', posnew);
set(gca,'FontSize',20)
g.FontName = 'Arial';
set(gca,'XTick',[ 100 200 300])
legend()
legend boxoff
box on

