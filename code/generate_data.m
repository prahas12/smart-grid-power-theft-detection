function [num_consumers,data,labels] = generate_data()

num_consumers = 100;
time = 1:1440;

data = zeros(num_consumers,length(time));
labels = zeros(num_consumers,1);

for i = 1:num_consumers
    
    base_load = 500 + 200*sin(2*pi*time/1440);
    
    noise = 50*randn(size(time));
    
    profile = base_load + noise;
    
    if rand < 0.2
        
        theft = profile .* (0.3 + 0.4*rand);
        data(i,:) = theft;
        labels(i) = 1;
        
    else
        
        data(i,:) = profile;
        labels(i) = 0;
        
    end
    
end

end