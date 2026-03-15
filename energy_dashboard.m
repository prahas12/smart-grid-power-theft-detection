function energy_dashboard(data)

num_consumers = size(data,1);

avg_load = mean(data,2);
max_load = max(data,[],2);

figure('Name','Smart Grid Energy Dashboard','NumberTitle','off')

subplot(2,2,1)
bar(1:num_consumers,avg_load)
title('Average Power Consumption')
xlabel('Consumer ID')
ylabel('Power (W)')
grid on

subplot(2,2,2)
bar(1:num_consumers,max_load)
title('Maximum Power Consumption')
xlabel('Consumer ID')
ylabel('Power (W)')
grid on

subplot(2,2,3)
histogram(avg_load)
title('Average Load Distribution')
xlabel('Power')
ylabel('Frequency')
grid on

subplot(2,2,4)
boxplot(data')
title('Consumption Variation')
xlabel('Time')
ylabel('Power')
grid on

sgtitle('Smart Grid Energy Analytics Dashboard')

end