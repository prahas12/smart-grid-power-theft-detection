function features = feature_extraction(data)

num_consumers = size(data,1);

features = zeros(num_consumers,4);

for i = 1:num_consumers
    
    profile = data(i,:);
    
    avg_load = mean(profile);
    
    max_load = max(profile);
    
    variance = var(profile);
    
    load_factor = avg_load / max_load;
    
    features(i,:) = [avg_load max_load variance load_factor];
    
end

end