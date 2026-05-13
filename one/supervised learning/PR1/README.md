## 📌 Project Overview

This project focuses on building a **predictive system to estimate house prices** based on various property features such as size, number of rooms, location score, and age of the property.

The goal is to **design, implement, analyze, and evaluate multiple supervised machine learning models** to predict house prices accurately and to **explain why certain models perform better than others** — covering key concepts like bias-variance trade-off, overfitting, underfitting, and gradient descent optimization.

---

## 🎯 Objectives

- Understand and implement supervised learning algorithms for regression
- Explore linear regression variants: Simple, Multiple, and Polynomial
- Optimize model training using Gradient Descent (Batch, SGD, Mini-Batch)
- Diagnose model performance using bias-variance analysis
- Communicate findings through a structured final report

---

## 📂 Repository Structure

```
📦 Predictive-Insight-Project/
│
├── 📓 PR1.EDA.ipynb
├── 📓 PR1.initiallization.ipynb
├── 📓 PR1.SLR.ipynb
├── 📓 PR1.MLR.ipynb
├── 📓 PR1.PR.ipynb
├── 📓 PR1.GDO.ipynb
├── 📓 PR1.Final_Analyze.ipynb
│
└── 📄 README.md
```

---

## 🗂️ Dataset Description

The dataset represents a **real estate property listing** with the following features:

| Feature | Type | Description |
|---|---|---|
| `House_Area` | Numeric (sq ft) | Total built-up area of the house |
| `Bedrooms` | Integer | Number of bedrooms |
| `Bathrooms` | Integer | Number of bathrooms |
| `Location_Score` | Float (1–10) | Desirability score of the location |
| `Age_of_Property` | Integer (years) | Age of the property |
| `House_Price` | Float (₹ / $) | **Target variable** — price of the house |

> **Note:** The dataset is sourced from the assignment link. The notebooks use a synthetic dataset that mirrors these exact features. Once you have the real dataset, replace the data-generation block in `PartB` with `df = pd.read_csv('your_file.csv')` and re-run all notebooks.

---

## 📓 Notebook Guide

### Part A — Conceptual Understanding (Theory)
`PartA_Conceptual_Understanding.ipynb`

Answers all 6 theory questions:
- What are Supervised Learning Algorithms?
- Regression vs Classification Algorithms (with comparison table)
- Explanation of Simple Linear Regression with implementation from scratch
- Assumptions of Linear Regression
- Bias-Variance Trade-Off (with polynomial degree visualizations)
- Overfitting and Underfitting with examples and plots

---

### Part B — Dataset Understanding & Preparation
`PartB_Dataset_Understanding_Preparation.ipynb`

- Loads the house price dataset
- Identifies independent and dependent variables (Tasks 7)
- Visualizes feature-target relationships with scatter plots and correlation heatmap (Task 8)
- Performs train-test split (80/20) (Task 9)

---

### Part C — Simple Linear Regression
`PartC_Simple_Linear_Regression.ipynb`

- Implements Simple Linear Regression using `House_Area` as the sole predictor (Task 10)
- Plots the regression line with slope and intercept annotated (Task 11)
- Validates all linear regression assumptions through residual plots, histogram of residuals, and Q-Q plot (Task 12)

---

### Part D — Model Evaluation Metrics
`PartD_Model_Evaluation_Metrics.ipynb`

Evaluates the Simple Linear Regression model using (Task 13):

| Metric | Description |
|---|---|
| **MSE** | Mean Squared Error — penalizes large errors heavily |
| **MAE** | Mean Absolute Error — robust to outliers |
| **RMSE** | Root Mean Squared Error — in the same unit as target |
| **R² Score** | Proportion of variance explained by the model |
| **Adjusted R²** | R² adjusted for number of predictors |

Interprets each metric and what it reveals about model performance (Task 14).

---

### Part E — Multiple Linear Regression
`PartE_Multiple_Linear_Regression.ipynb`

- Implements Multiple Linear Regression using all 5 features (Task 15)
- Compares performance against Simple LR using RMSE, MAE, and R² (Task 16)
- Explains why performance improves or degrades with more features (Task 17)

---

### Part F — Polynomial Regression
`PartF_Polynomial_Regression.ipynb`

- Implements Polynomial Regression for degrees 2 through 7 (Task 18)
- Compares linear vs polynomial regression visually and numerically (Task 19)
- Identifies signs of overfitting (high train R², low test R²) and underfitting (Task 20)

---

### Part G — Gradient Descent Optimization
`PartG_Gradient_Descent_Optimization.ipynb`

Covers all three variants of Gradient Descent (Tasks 21–25):

| Method | Update Frequency | Noise Level | Best For |
|---|---|---|---|
| **Batch GD** | After full dataset | Low | Small datasets |
| **Stochastic GD (SGD)** | After every sample | High | Online learning |
| **Mini-Batch GD** | After k samples | Medium | Deep learning (most common) |

Includes convergence comparison plots for all three methods.

---

### Part H — Bias-Variance & Model Diagnostics
`PartH_Bias_Variance_Diagnostics.ipynb`

- Analyzes bias and variance across Simple LR, Multiple LR, and Polynomial Regression (Task 26)
- Explains how model complexity affects prediction error (Task 27)
- Uses learning curves and train vs test RMSE charts to identify the best-balanced model (Task 28)

---

### Part I — Final Analysis & Reporting
`PartI_Final_Analysis_Reporting.ipynb`

Consolidates all findings (Tasks 29–30):
- Final model comparison table (RMSE, MAE, R²)
- Best performing model identification
- Impact of gradient descent optimization
- Evidence of overfitting/underfitting across models
- Practical business interpretation of results
- Full submission checklist

---

## ⚙️ Setup & Installation

### Prerequisites

- Python 3.8 or above
- Jupyter Notebook or JupyterLab

### Install Required Libraries

```bash
pip install numpy pandas matplotlib seaborn scikit-learn scipy jupyter
```

### Run the Notebooks

```bash
# Clone or download the project folder, then:
jupyter notebook
```

Open any notebook from the Jupyter interface and run cells sequentially (`Shift + Enter`).

---

## 📊 Key Results Summary

| Model | RMSE | R² | Notes |
|---|---|---|---|
| Simple LR (1 feature) | High | ~0.75 | Underfits — only uses House Area |
| Multiple LR (5 features) | Low | ~0.95 | Best balance of bias & variance |
| Polynomial Deg 2 | Low | ~0.94 | Good fit for non-linear data |
| Polynomial Deg 5+ | Very Low (train) | Drops on test | Overfitting observed |

**Best Model: Multiple Linear Regression** with all 5 features achieves the highest test R² with minimal overfitting.

---

## 💡 Key Concepts Covered

- Supervised Learning & Regression fundamentals
- Simple, Multiple, and Polynomial Linear Regression
- Model evaluation: MSE, MAE, RMSE, R², Adjusted R²
- Assumption validation: residual plots, Q-Q plots, homoscedasticity
- Gradient Descent: Batch, SGD, Mini-Batch
- Bias-Variance Trade-Off and learning curves
- Overfitting vs Underfitting diagnosis and remedies

