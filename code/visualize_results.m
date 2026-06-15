function visualize_results(data,labels)

time = 1:size(data,2);

normal_index = find(labels==0);
theft_index = find(labels==1);

figure

subplot(2,1,1)
plot(time,data(normal_index(1),:),'b','LineWidth',1.5)
title('Normal Electricity Consumption Pattern')
xlabel('Time (minutes)')
ylabel('Power (W)')
grid on

subplot(2,1,2)
plot(time,data(theft_index(1),:),'r','LineWidth',1.5)
title('Power Theft Consumption Pattern')
xlabel('Time (minutes)')
ylabel('Power (W)')
grid on


figure
plot(time,data(1:10,:)')

title('Smart Meter Dataset (10 Consumers)')
xlabel('Time')
ylabel('Power')

grid on

end