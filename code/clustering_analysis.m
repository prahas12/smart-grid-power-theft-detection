function clustering_analysis(features)

features(isnan(features)) = 0;
features(isinf(features)) = 0;

k = 3;

idx = kmeans(features,k,'Replicates',5);

figure

gscatter(features(:,1),features(:,2),idx)

xlabel('Average Load')
ylabel('Maximum Load')

title('Consumer Clustering using K-Means')

grid on

end