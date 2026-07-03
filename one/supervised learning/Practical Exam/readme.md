# 🏠 House Price Prediction using Machine Learning

## 📌 Project Overview

This project predicts house prices using supervised machine learning techniques. The goal is to build and compare multiple regression models to accurately estimate house prices based on various property features.

The project includes complete data preprocessing, exploratory data analysis (EDA), feature engineering, model training, evaluation, cross-validation, hyperparameter tuning, and model deployment using a saved machine learning pipeline.

---

## 📂 Dataset

**Dataset Used:** Ames Housing Dataset

Files:
- train.csv
- test.csv
- sample_submission.csv

Target Variable:
- **SalePrice**

---

## 🎯 Objectives

- Perform Exploratory Data Analysis (EDA)
- Handle missing values
- Engineer useful features
- Encode categorical variables
- Scale numerical features
- Train multiple regression models
- Compare model performance
- Perform hyperparameter tuning
- Save the best model for future predictions

---

## 🛠 Technologies Used

- Python 3.x
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- XGBoost
- SciPy
- Joblib

---

## 📊 Exploratory Data Analysis

The following analyses were performed:

- Dataset overview
- Missing value analysis
- Numerical and categorical feature analysis
- Histograms
- Q-Q plots
- Correlation heatmap
- Scatter plots
- Boxplots
- Outlier detection

---

## ⚙ Data Preprocessing

The preprocessing pipeline includes:

- Missing value imputation
- Feature engineering
- One-Hot Encoding
- Standard Scaling
- Train-Test Split
- Pipeline implementation using Scikit-learn

---

## 🤖 Models Implemented

1. Linear Regression
2. Ridge Regression
3. Lasso Regression
4. Random Forest Regressor
5. XGBoost Regressor

---

## 📈 Model Evaluation Metrics

The models were evaluated using:

- Root Mean Squared Error (RMSE)
- Mean Absolute Error (MAE)
- R² Score
- 5-Fold Cross Validation RMSE
- Training Time

---

## 🔍 Hyperparameter Tuning

RandomizedSearchCV was used to optimize the Random Forest model using multiple hyperparameter combinations.

---

## 📉 Residual Analysis

Residual analysis includes:

- Residual vs Fitted Plot
- Residual Distribution
- Q-Q Plot of Residuals

---

## 🏆 Best Performing Model

Based on RMSE, MAE, and R² Score, **Lasso Regression** achieved the best overall performance.

Reasons:

- Highest R² Score
- Lowest RMSE
- Good generalization performance
- Simple and interpretable model
- Performs automatic feature selection

---

## 💾 Saved Model

The final trained model is saved as:

```
house_price_model.pkl
```

The model can be loaded using:

```python
import joblib

model = joblib.load("house_price_model.pkl")
```

---

## 📁 Project Structure

```
House Price Prediction/
│
├── train.csv
├── test.csv
├── sample_submission.csv
├── Housing.ipynb
├── house_price_model.pkl
├── README.md
```

---

## 🚀 How to Run

1. Install required libraries

```bash
pip install pandas numpy matplotlib seaborn scikit-learn xgboost scipy joblib
```

2. Open the Jupyter Notebook

```
Housing.ipynb
```

3. Run all cells sequentially.

---

## 📌 Results

The project successfully demonstrates a complete machine learning workflow for house price prediction, from data preprocessing to model evaluation and deployment.

Multiple regression models were compared, and the best-performing model was selected based on predictive performance and interpretability.

---

## 👩‍💻 Author

**Pooja Suthar**

Machine Learning Assignment