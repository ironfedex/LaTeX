data_2 = importdata('PME2019 G1 cemento P2.txt'); 

T_2 = data_2(:,2);

m_2 = data_2(:,3);

m_2 = m_2/(m_2(1));

d_2 = -smooth(diff(m_2)./diff(T_2),0.01);

a = 0.15;
b = 0.08;
c = b+90;
d = 2600;
e = d + 90;

q = 0.3;

figure(1)
g = subplot(2, 1, 1)
p2 = line(T_2,m_2,'Color',[0, 0.4470, 0.7410],'LineWidth',1, ...
    'DisplayName','PMMA');
hold on
box on
set(get(g,'Xlabel'),'String','T  (°C)');
set(get(g,'Ylabel'),'String','residual mass (%)');
ylim(g,[0 1.05]);
yticks(0:0.2:1)
g.FontSize = 20;
g.FontName = 'Arial';
xlim(g,[50 700])
xticklabels(g,[])

legend('PMMA')
legend boxoff

x = [0.05+b 0.05+b];
y = [0.90 0.925];
annotation('arrow',x,y)


h = subplot(2, 1, 2)
t4 = line(T_2(1:end-1),d_2,'Color',[0, 0.4470, 0.7410],'LineWidth',1, ...
    'DisplayName','PMMA');
hold on
box on
set(get(h,'Xlabel'),'String','T  (°C)');
set(get(h,'Ylabel'),'String','- dm / dT (1/{°C})');
ylim(h,[0 0.014]);
yticks(0:0.004:0.012)
h.FontSize = 20;
h.FontName = 'Arial';
xlim(h,[50 700])
legend([t2 t3 t4 t5])
legend boxoff

x = [0.05+b 0.05+b];
y = [0.53 0.55];
annotation('arrow',x,y)


set(g, 'Position', [0.05+b, 0.4+a, 0.5, 0.4])

