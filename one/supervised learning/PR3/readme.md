# Risk Alert Classifier

## Project Overview

This project focuses on building a machine learning model to classify customers as **High Risk** or **Low Risk** based on their financial and demographic information. The project includes data preprocessing, handling missing values, addressing class imbalance, training multiple classification models, and evaluating their performance using various metrics.

---

## Objectives

- Understand and preprocess the dataset.
- Handle missing values using KNN Imputer.
- Train classification models.
- Evaluate model performance using confusion matrix and classification metrics.
- Handle imbalanced data using sampling techniques.
- Compare model performance before and after balancing the dataset.
- Visualize model performance using ROC Curve and AUC Score.

---

## Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- Imbalanced-learn

---

## Machine Learning Models

- Logistic Regression
- Decision Tree Classifier
- Random Forest Classifier

---

## Data Preprocessing

- Loaded dataset using Pandas
- Explored dataset using descriptive statistics
- Identified missing values
- Handled missing values using KNN Imputer
- Encoded categorical variables
- Split dataset into training and testing sets

---

## Handling Imbalanced Data

The following techniques were applied to improve prediction performance:

- Random Under Sampling
- Random Over Sampling
- SMOTE (Synthetic Minority Oversampling Technique)
- ADASYN (Adaptive Synthetic Sampling)

---

## Performance Evaluation Metrics

The models were evaluated using:

- Accuracy
- Precision
- Recall
- F1-Score
- Confusion Matrix
- ROC Curve
- AUC-ROC Score

Special focus was given to **Recall**, **F1-Score**, and **AUC-ROC**, as these metrics provide a better evaluation for imbalanced classification problems.

---

## Results

After applying sampling techniques, the model performance improved, particularly for the minority class. The balanced dataset resulted in higher Recall, improved F1-Score, and better ROC-AUC values compared to the original imbalanced dataset.

---

## Project Structure

```
Risk_Alert_Classifier/
│
├── Risk_Alert_Classifier_Dataset.csv
├── Risk_Alert_Classifier.ipynb
├── README.md
└── requirements.txt
```

---

## How to Run

1. Install the required libraries:

```bash
pip install pandas numpy matplotlib seaborn scikit-learn imbalanced-learn
```

2. Open the Jupyter Notebook.

3. Run all cells sequentially.

4. View the evaluation metrics and comparison results.

---

## Future Improvements

- Hyperparameter tuning using Grid Search and Randomized Search.
- Cross-validation for more robust evaluation.
- Feature engineering and feature selection.
- Deploy the trained model as a web application using Flask or Streamlit.

---

## Conclusion

This project demonstrates the complete machine learning workflow for a binary classification problem, including data preprocessing, handling imbalanced datasets, model training, evaluation, and performance comparison. The use of balancing techniques significantly improves the model's ability to correctly identify minority-class instances.

---

## Author

**Pooja Suthar**
