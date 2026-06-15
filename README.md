#  AI-Based Smart Grid Power Theft Detection System

##  Overview

Electricity theft and abnormal power consumption are major challenges in modern power distribution networks. Utilities lose significant revenue every year due to unauthorized electricity usage and inefficient monitoring systems.

This project presents a **MATLAB-based smart grid analytics system** that detects suspicious electricity consumption patterns using machine learning techniques.

The system simulates smart meter data, extracts useful features from electricity load patterns, and applies AI models to identify potential electricity theft.

This project demonstrates how **machine learning and data analytics can enhance monitoring and security in modern smart grids.**

---

##  Project Motivation

Traditional electricity meters only measure total energy consumption and provide limited insight into how electricity is being used.

With the development of **smart grids and smart meters**, utilities can collect detailed consumption data from consumers. By analyzing this data intelligently, it becomes possible to detect:

* abnormal electricity usage
* potential energy theft
* unusual consumer behavior

This project explores how **AI models can automatically detect such anomalies**.

---

##  Key Features

* Smart meter data simulation for multiple consumers
* Feature extraction from electricity consumption patterns
* Electricity theft detection using **Support Vector Machine (SVM)**
* Detection using a **Neural Network model**
* Consumer behavior clustering using **K-Means**
* Energy analytics dashboard for consumption monitoring
* Visualization of normal vs suspicious consumption patterns

---

##  System Workflow

```
Smart Meter Data Simulation
            ↓
     Feature Extraction
            ↓
Machine Learning Detection
   (SVM + Neural Network)
            ↓
     Consumer Clustering
         (K-Means)
            ↓
  Energy Analytics Dashboard
```

---

##  Technologies Used

* MATLAB
* Machine Learning Algorithms
* Smart Grid Data Simulation
* Data Visualization

---

##  How to Run the Project

1. Open **MATLAB**
2. Navigate to the `code` folder
3. Run the main script:

```
main
```

The program will automatically:

* simulate smart meter data
* extract consumption features
* train machine learning models
* generate analytics plots
* export result figures

---

##  Project Structure

```
smart-grid-power-theft-detection
│
├── code
│   ├── main.m
│   ├── generate_data.m
│   ├── feature_extraction.m
│   ├── train_model.m
│   ├── train_neural_network.m
│   ├── visualize_results.m
│   ├── clustering_analysis.m
│   └── energy_dashboard.m
│
├── images
│   ├── consumption_pattern.png
│   ├── clustering_analysis.png
│   └── energy_dashboard.png
│
├── docs
│   └── project_report.pdf
│
├── README.md
└── LICENSE
```

---

##  Future Improvements

Possible extensions of this system include:

* Integration with real smart meter hardware
* Real-time energy monitoring using IoT sensors
* Cloud-based smart grid analytics
* Advanced anomaly detection using deep learning
* Integration with renewable energy monitoring systems

---

##  Author

Developed as part of a personal exploration of **AI applications in smart grid energy systems and intelligent power monitoring**.
