# Robust Regression Engine
### Supervised Learning | Red & White Skill Education

## Dataset
Real Indian real estate data — 3,800 properties, 9 features.
Target: house_price_inr (range ₹15L – ₹5.9Cr)

## Notebooks
| Notebook | Description |
|---|---|
| PartA_Conceptual_Foundation | Theory answers |
| PartB_Dataset_Understanding | EDA, scaling, train/test split |
| PartC_Regularized_Linear_Models | Ridge, Lasso, alpha tuning |
| PartD_CrossValidation_Strategies | K-Fold, Stratified, LOOCV, Time Series |
| PartE_TreeBased_Models | Decision Tree & Random Forest |
| PartF_Support_Vector_Regression | SVR kernels + GridSearch |
| PartG_Model_Comparison_Evaluation | All models: metrics + overfitting |
| PartH_Final_Analysis_Report | Business insights + conclusions |

## Best Model
Random Forest (100 trees) — Test R2 ≈ 0.93

## How to Run
```bash
pip install pandas numpy scikit-learn matplotlib seaborn
# Place CSV in same folder and update path if needed
jupyter notebook
```
