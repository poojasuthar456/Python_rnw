# Deep Learning PR 1 — Breast Cancer Classification

## Project Overview

This project is part of the **Red & White Skill Education — Deep Learning PR 1** assignment.

The objective is to build and compare neural-network models for binary classification using the **Breast Cancer Wisconsin (Diagnostic)** dataset. The project covers data preprocessing, a Single Layer Perceptron (SLP), Multi-Layer Perceptrons (MLPs), activation functions, Early Stopping, Dropout, L1/L2 regularization, ElasticNet regularization, and a final combined model.

---

## Dataset

**Dataset:** Breast Cancer Wisconsin (Diagnostic)

The dataset is loaded directly using Scikit-learn:

```python
from sklearn.datasets import load_breast_cancer

data = load_breast_cancer(as_frame=True)
X = data.data
y = data.target
```

- Samples: **569**
- Features: **30**
- Target: Binary classification
- `0` = Malignant
- `1` = Benign
- Missing values: None

The dataset contains numerical measurements of cell nuclei such as radius, texture, perimeter, area, smoothness, compactness, concavity, symmetry, and fractal dimension.

---

## Technologies Used

- Python
- TensorFlow / Keras
- Scikit-learn
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

---

## Project Workflow

### Task 1 — Data Loading, EDA & Preprocessing

- Loaded the Breast Cancer Wisconsin dataset.
- Examined dataset shape, descriptive statistics, and target distribution.
- Visualized malignant vs benign class distribution.
- Created a feature correlation heatmap.
- Used stratified train/test splitting:
  - Test size: `0.2`
  - Random state: `42`
  - `stratify=y`
- Applied `StandardScaler`.
- The scaler was fitted only on the training data to avoid data leakage.

### Task 2 — Single Layer Perceptron (SLP)

Architecture:

```text
30 → 1
```

- Sigmoid output activation
- Adam optimizer
- Binary cross-entropy loss
- 50 epochs
- Batch size: 32

**Test Accuracy: 94.74%**

The SLP provides a useful baseline but is limited because it can only learn a linear decision boundary.

### Task 3 — Multi-Layer Perceptron (MLP)

Best-performing activation in the experiment: **ReLU**

Architecture:

```text
30 → 64 → 32 → 1
```

- ReLU in hidden layers
- Sigmoid in output layer
- 100 epochs

Activation functions compared:

- ReLU
- Tanh
- Sigmoid

**Test Accuracy: 95.61%**

### Task 4 — Early Stopping

Architecture:

```text
30 → 128 → 64 → 1
```

Early Stopping configuration:

- `monitor='val_loss'`
- `patience=15`
- `restore_best_weights=True`
- Maximum epochs: 300

The model stopped training at epoch **207**, with the best weights restored from epoch **192**.

**Test Accuracy: 95.61%**

Early Stopping helps prevent unnecessary training after validation performance stops improving.

### Task 5 — Dropout

Architecture:

```text
30 → 128 → Dropout → 64 → Dropout → 1
```

Dropout rates compared:

- 0.1
- 0.3
- 0.5

The experiment selected **Dropout 0.5** based on the validation curves.

**Test Accuracy: 95.61%**

Dropout randomly disables neurons during training, helping reduce over-reliance on particular neurons and control overfitting.

### Task 6 — Regularization

Three regularization approaches were investigated.

#### L1 Regularization

- L1 coefficient: `0.001`
- Applied to hidden layers
- Encourages sparse weights.

**Test Accuracy: 96.49%**

#### L2 Regularization

- L2 coefficient: `0.001`
- Applied to hidden layers
- Encourages smaller weights and smoother decision boundaries.

**Test Accuracy: 95.61%**

#### ElasticNet

- L1: `0.0001`
- L2: `0.001`
- Combines sparsity from L1 with weight shrinkage from L2.

**Test Accuracy: 95.61%**

In this experiment, **L1 regularization achieved the highest test accuracy** among the regularization models.

### Task 7 — Final Combined Model

Final architecture:

```text
30
 ↓
Dense(128, ReLU + L2)
 ↓
Dropout(0.3)
 ↓
Dense(64, ReLU + L2)
 ↓
Dropout(0.3)
 ↓
Dense(1, Sigmoid)
```

Early Stopping:

- `monitor='val_loss'`
- `patience=20`
- `restore_best_weights=True`
- Maximum epochs: 300

Training stopped at epoch **155**, with the best weights restored from epoch **135**.

**Test Loss: 0.1314**

**Test Accuracy: 95.61%**

Classification results:

| Metric | Malignant | Benign |
|---|---:|---:|
| Precision | 0.91 | 0.99 |
| Recall | 0.98 | 0.94 |
| F1-score | 0.94 | 0.96 |

### Final Confusion Matrix

| Actual / Predicted | Malignant | Benign |
|---|---:|---:|
| Malignant | 41 | 1 |
| Benign | 4 | 68 |

The final model correctly classified **109 of 114** test samples.

---

## Model Accuracy Comparison

| Model | Test Accuracy |
|---|---:|
| SLP | 94.74% |
| MLP-ReLU | 95.61% |
| MLP + Early Stopping | 95.61% |
| MLP + Dropout (0.5) | 95.61% |
| MLP + L1 | **96.49%** |
| MLP + L2 | 95.61% |
| ElasticNet | 95.61% |
| Final Combined Model | 95.61% |

> **Note:** These values represent the results obtained during the notebook experiments.

---

## Clinical Insight

For medical diagnosis support, accuracy alone should not determine model selection. A **false negative**, where a malignant case is classified as benign, can be more serious than a false positive.

The final combined model achieved **98% recall for malignant cases** and produced only **one malignant false negative** on the test set. This makes high malignant recall an important strength of the model.

The L1-regularized model achieved the highest test accuracy in this experiment at **96.49%**. The final combined model achieved **95.61%** while combining L2 regularization, Dropout, and Early Stopping.

For a real clinical decision-support system, the classification threshold should be selected using validation data and the clinical cost of false negatives versus false positives. A threshold lower than the default 0.5 could be considered if increasing malignant recall is the priority, but this should be validated carefully.

These models are intended for educational experimentation and should **not be used as a standalone medical diagnostic system**.

---

## Repository Structure

```text
Deep-Learning-PR1/
│
├── DL_PR1.ipynb
├── DL_PR1.html
├── README.md
├── requirements.txt
│
└── plots/
    ├── class_distribution.png
    ├── correlation_heatmap.png
    ├── slp_curves.png
    ├── slp_confusion_matrix.png
    ├── activation_comparison.png
    ├── mlp_confusion_matrix.png
    ├── early_stopping_curves.png
    ├── dropout_comparison.png
    ├── regularization_comparison.png
    └── final_confusion_matrix.png
```

---

## Requirements

Example `requirements.txt`:

```text
tensorflow>=2.12.0
scikit-learn>=1.4.0
pandas
numpy
matplotlib
seaborn
```

---

## How to Run

1. Clone or download this repository.
2. Install the required Python packages.
3. Open `DL_PR1.ipynb` in Jupyter Notebook or JupyterLab.
4. Run the notebook cells in order.
5. Review the generated plots, model results, and classification reports.

---

## Video Explanation

A 5–10 minute explanation video covering the project concepts will be added here.

**Video:** `[Add your video link here]`

---

## Topics Covered

- Data scaling and preprocessing
- Class distribution and correlation
- Single Layer Perceptron limitations
- Multi-Layer Perceptron
- ReLU, Tanh and Sigmoid activation functions
- Early Stopping
- Dropout
- L1 Regularization
- L2 Regularization
- ElasticNet Regularization
- Model comparison
- Clinical trade-offs in cancer classification

---

## Author

**Pooja Suthar**

Deep Learning PR 1  
Red & White Skill Education
