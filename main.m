clc
clear
close all

disp('SMART GRID POWER THEFT DETECTION SYSTEM')
disp('---------------------------------------')

%% Image save folder

image_folder = 'C:\Users\us\Desktop\FOSSEE_Hackathon_Project\image';

if ~exist(image_folder,'dir')
    mkdir(image_folder)
end

%% Step 1 — Generate Smart Meter Data

[num_consumers,data,labels] = generate_data();

fprintf('Number of consumers simulated: %d\n',num_consumers)

%% Step 2 — Feature Extraction

features = feature_extraction(data);

disp('Feature extraction completed')

%% Step 3 — Train SVM Model

model = train_model(features,labels);

disp('SVM model training completed')

%% Step 4 — Neural Network Detection

train_neural_network(features,labels);

disp('Neural network training completed')

%% Step 5 — Visualization of Consumption Patterns

visualize_results(data,labels);

disp('Consumption visualization completed')

%% Step 6 — Consumer Clustering Analysis

clustering_analysis(features);

disp('Consumer clustering completed')

%% Step 7 — Energy Analytics Dashboard

energy_dashboard(data);

disp('Energy dashboard generated')

