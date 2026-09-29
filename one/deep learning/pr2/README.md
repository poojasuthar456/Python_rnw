# Deep Learning PR 2 --- Adult Income Classification

## 📌 Project Overview

This project is part of **Red & White Skill Education --- Deep Learning
PR 2**.

The project uses an **Artificial Neural Network (ANN / MLP)** to perform
binary classification on the **Adult Income (Census Income) dataset**.
The objective is to predict whether an individual's annual income is:

-   `<=50K` → Class `0`
-   `>50K` → Class `1`

The project focuses on understanding how preprocessing, activation
functions, weight initialization, loss functions, Batch Normalization,
and optimizers affect ANN performance on structured/tabular data.

------------------------------------------------------------------------

## 📊 Dataset

**Dataset:** Adult / Census Income Dataset\
**Source:** UCI Machine Learning Repository\
**Task:** Binary classification\
**Original size:** 48,842 records and 14 input features\
**Target:** Annual income above or below `$50K`

🔗 [UCI Adult Dataset](https://archive.ics.uci.edu/dataset/2/adult)

The dataset contains numerical and categorical census-related features
such as age, workclass, education, marital status, occupation,
relationship, race, sex, capital gain/loss, hours worked per week, and
native country.

------------------------------------------------------------------------

## 🎯 Project Objectives

1.  Clean and preprocess the Adult Income dataset.
2.  Explore the dataset using visualizations.
3.  Build a reusable ANN function using TensorFlow/Keras.
4.  Establish a baseline MLP model.
5.  Compare different activation functions.
6.  Compare different weight initialization methods.
7.  Compare BCE, MSE, Weighted BCE, and Focal Loss.
8.  Analyze the effect of Batch Normalization.
9.  Compare multiple optimizers and learning rates.
10. Build and evaluate a final combined ANN.
11. Compare models using Accuracy, Precision, Recall, F1-score, and
    ROC-AUC.

------------------------------------------------------------------------

# 🧹 Data Preprocessing

The following preprocessing steps were performed:

1.  Loaded `adult.csv` using Pandas.
2.  Stripped whitespace from string columns.
3.  Replaced `?` with `NaN`.
4.  Checked missing values.
5.  Removed rows containing missing values.
6.  Dropped `fnlwgt`.
7.  Dropped the text-based `education` column while retaining
    `educational-num`.
8.  Encoded the target:
    -   `<=50K` → `0`
    -   `>50K` → `1`
9.  One-hot encoded categorical features using
    `pd.get_dummies(drop_first=True)`.
10. Standardized numerical features using `StandardScaler`.
11. Used a stratified 80/20 train-test split with `random_state=42`.

### Dataset after cleaning

-   Cleaned rows: **45,222**
-   Features after one-hot encoding: **80**
-   Training samples: **36,177**
-   Test samples: **9,045**

### Class distribution

-   `<=50K`: 34,014 --- **75.22%**
-   `>50K`: 11,208 --- **24.78%**

Because the dataset is imbalanced, accuracy alone is not sufficient.
Precision, Recall, and especially F1-score for the minority `>50K` class
were also monitored.

------------------------------------------------------------------------

# 🧠 Core Deep Learning Topics

## 1. MLP / Artificial Neural Network

A Multi-Layer Perceptron is a feed-forward neural network made up of
fully connected layers. It is suitable for this project because the
Adult Income dataset is structured/tabular data containing numerical
features and one-hot encoded categorical features.

### Baseline architecture

``` text
Input
  ↓
Dense(128, ReLU)
  ↓
Dense(64, ReLU)
  ↓
Dense(1, Sigmoid)
```

The baseline used:

-   Optimizer: Adam
-   Loss: Binary Cross-Entropy
-   Epochs: 50
-   Batch size: 64
-   Validation split: 10%

------------------------------------------------------------------------

## 2. Activation Functions

Four hidden-layer activation functions were compared:

-   ReLU
-   tanh
-   Sigmoid
-   ELU

The experiment also included:

-   ReLU dead-neuron analysis
-   Sigmoid gradient-flow analysis using `GradientTape`
-   Validation accuracy comparison
-   Class-1 F1 comparison

### Validation accuracy

  Activation     Validation Accuracy
  ------------ ---------------------
  ReLU                        85.02%
  tanh                        85.16%
  sigmoid                     85.27%
  ELU                     **85.38%**

------------------------------------------------------------------------

## 3. Weight Initialization

Five initialization methods were compared:

-   Glorot Uniform
-   Glorot Normal
-   He Uniform
-   He Normal
-   Zeros

The experiment included convergence analysis, zero-initialization
failure analysis, and weight-distribution plots before and after
training.

### Final validation accuracy

  Initializer        Validation Accuracy
  ---------------- ---------------------
  Glorot Uniform              **84.91%**
  He Normal                       84.80%
  He Uniform                      83.67%
  Glorot Normal                   83.64%
  Zeros                           75.26%

Zero initialization performed poorly because all hidden neurons begin
with identical weights and therefore learn the same features.

------------------------------------------------------------------------

## 4. Loss Functions

The following loss-function experiments were performed:

-   Binary Cross-Entropy
-   Mean Squared Error
-   Weighted Binary Cross-Entropy
-   Focal Loss

Class weights were calculated using `compute_class_weight('balanced')`.

### Minority-class (`>50K`) comparison

  Loss             Precision     Recall     F1
  -------------- ----------- ---------- ------
  BCE                   0.72       0.62   0.66
  Weighted BCE          0.57   **0.81**   0.67
  Focal Loss            0.71       0.58   0.64

Weighted BCE increased minority-class recall by assigning greater
training importance to the underrepresented `>50K` class.

------------------------------------------------------------------------

## 5. Batch Normalization

Batch Normalization was added after the Dense layers and before the ReLU
activation:

``` text
Dense(128)
    ↓
BatchNormalization
    ↓
ReLU
    ↓
Dense(64)
    ↓
BatchNormalization
    ↓
ReLU
    ↓
Dense(1, Sigmoid)
```

The experiment included:

-   Baseline vs BatchNorm training dynamics
-   BatchNorm parameter analysis
-   Before/after activation position comparison
-   Gamma and beta inspection
-   Running mean and variance inspection

### BatchNorm position experiment

  Arrangement                  Validation Accuracy
  -------------------------- ---------------------
  Dense → BatchNorm → ReLU                  84.60%
  Dense → ReLU → BatchNorm                  85.21%

These values are from one experimental run, so the difference should not
be treated as a statistical significance test.

------------------------------------------------------------------------

## 6. Optimizers

Five optimizer configurations were compared using the ReLU + He Normal +
BatchNorm + BCE configuration:

-   Vanilla SGD
-   SGD with Momentum
-   RMSprop
-   Adam
-   Explicit Adam

Learning-rate sensitivity was also tested for:

-   SGD: `0.0001`, `0.001`, `0.01`, `0.1`
-   Adam: `0.0001`, `0.001`, `0.01`

------------------------------------------------------------------------

# 🔧 Reusable `build_ann()` Function

The project uses a reusable function to make the ANN experiments easier
to reproduce.

  Parameter          Purpose
  ------------------ ------------------------------------
  `input_dim`        Number of input features
  `hidden_units`     Number of neurons in hidden layers
  `activation`       Hidden-layer activation function
  `initializer`      Weight initialization method
  `use_batch_norm`   Enables Batch Normalization
  `optimizer`        Training optimizer
  `loss`             Loss function

Example:

``` python
build_ann(
    input_dim=X_train.shape[1],
    hidden_units=[128, 64],
    activation='relu',
    initializer='glorot_uniform',
    use_batch_norm=False,
    optimizer='adam',
    loss='binary_crossentropy'
)
```

------------------------------------------------------------------------

# 🏁 Final Combined Model

The final model used:

``` text
Activation      → ReLU
Initializer     → He Normal
BatchNorm       → Yes
Loss            → Binary Cross-Entropy
Optimizer       → SGD
Learning Rate   → 0.1
Class Weights   → Yes
Epochs          → 80
Batch Size      → 64
```

### Final test results

  Metric                   Result
  ------------------- -----------
  Accuracy               **0.80**
  Class-1 Precision      **0.56**
  Class-1 Recall         **0.85**
  Class-1 F1             **0.68**
  ROC-AUC               **0.901**

The class-weighted final model prioritizes identifying the minority
`>50K` class, which is reflected in its relatively high Class-1 Recall.

------------------------------------------------------------------------

# 📈 ROC-AUC Comparison

The required ROC comparison was performed for:

-   Baseline
-   Weighted BCE
-   Final Combined

  Model                ROC-AUC
  ---------------- -----------
  Baseline           **0.902**
  Weighted BCE       **0.887**
  Final Combined     **0.901**

The ROC curves are available in the `plots/` folder.

> **Note:** The ROC-AUC values above should be kept synchronized with
> the final notebook after the notebook is restarted and run from top to
> bottom.

------------------------------------------------------------------------

# 📋 Model Comparison

  --------------------------------------------------------------------------------------------------------------------------
  Model           Activation   Initializer   Loss       BatchNorm   Optimizer     Accuracy   Precision Recall (1)     F1 (1)
                                                                                                   (1)            
  --------------- ------------ ------------- ---------- ----------- ----------- ---------- ----------- ---------- ----------
  Baseline        ReLU         Glorot        BCE        No          Adam              0.85        0.72       0.62       0.66
                               Uniform                                                                            

  Best Activation ELU          Glorot        BCE        No          Adam              0.85        0.73       0.62       0.67
                               Uniform                                                                            

  Best            ReLU         Glorot        BCE        No          Adam              0.84        0.70       0.64       0.67
  Initializer                  Uniform                                                                            

  Weighted BCE    ReLU         He Normal     Weighted   No          Adam              0.80        0.57       0.81       0.67
                                             BCE                                                                  

  Focal Loss      ReLU         He Normal     Focal Loss No          Adam              0.84        0.71       0.58       0.64

  Batch           ReLU         He Normal     BCE        Yes         Adam              0.84        0.73       0.58       0.65
  Normalization                                                                                                   

  Final Combined  ReLU         He Normal     BCE        Yes         SGD               0.80        0.56   **0.85**   **0.68**
                                                                    (lr=0.1)                                      
  --------------------------------------------------------------------------------------------------------------------------

**ROC-AUC recorded for the required ROC comparison:** Baseline `0.902`,
Weighted BCE `0.887`, Final Combined `0.901`.

------------------------------------------------------------------------

# 🖼️ Project Plots

Place the exported figures inside the `/plots` folder.

Recommended filenames:

  -----------------------------------------------------------------------
  File                                Description
  ----------------------------------- -----------------------------------
  `eda_class_balance.png`             Income class distribution

  `activation_comparison.png`         Activation-function comparison

  `initialiser_convergence.png`       Weight-initializer convergence

  `weight_distributions.png`          Weight distributions before/after
                                      training

  `loss_f1_comparison.png`            Loss-function and minority-class F1
                                      comparison

  `batchnorm_dynamics.png`            BatchNorm vs baseline training
                                      dynamics

  `optimiser_convergence.png`         Optimizer validation-accuracy
                                      comparison

  `roc_curves.png`                    ROC curves for selected models

  `results_table.png`                 Final model comparison table
  -----------------------------------------------------------------------

------------------------------------------------------------------------

# 📁 Repository Structure

``` text
DL_PR2/
│
├── DL_PR2.ipynb
├── DL_PR2.html
├── README.md
├── requirements.txt
├── adult.csv
│
├── plots/
│   ├── eda_class_balance.png
│   ├── activation_comparison.png
│   ├── initialiser_convergence.png
│   ├── weight_distributions.png
│   ├── loss_f1_comparison.png
│   ├── batchnorm_dynamics.png
│   ├── optimiser_convergence.png
│   ├── roc_curves.png
│   └── results_table.png
│
└── video/
    └── DL_PR2_YourName_GRID.mp4
```

> If the dataset file is not included in the public repository, download
> it from the UCI source linked above and keep `adult.csv` in the same
> directory as the notebook when running it.

------------------------------------------------------------------------

# 🛠️ Technologies Used

-   Python 3.x
-   TensorFlow / Keras
-   Scikit-learn
-   Pandas
-   NumPy
-   Matplotlib
-   Seaborn
-   Jupyter Notebook

------------------------------------------------------------------------

# 📦 Requirements

Recommended `requirements.txt`:

``` text
tensorflow>=2.12.0
scikit-learn>=1.4.0
pandas
numpy
matplotlib
seaborn
```

------------------------------------------------------------------------

# 🎥 Video

**Project Explanation Video:**\
`[Add your Google Drive / YouTube unlisted video link here]`

The video should demonstrate the notebook, model architecture,
experiments, comparison plots, final results table, and ROC curve.

------------------------------------------------------------------------

# 📚 Project Deliverables

-   `DL_PR2.ipynb` --- complete Jupyter Notebook
-   `DL_PR2.html` --- exported HTML version
-   `/plots` --- project visualizations
-   `README.md` --- project documentation
-   `requirements.txt` --- Python dependencies
-   Project explanation video

------------------------------------------------------------------------

# 👩‍💻 Author

**Name:** `[Your Name]`\
**Course:** BCA + AI/ML/Data Science\
**Project:** Deep Learning PR 2 --- Adult Income Classification

------------------------------------------------------------------------

## 📌 Important Reproducibility Note

The experiments in this project were performed in Jupyter Notebook using
TensorFlow/Keras. Neural-network results can vary slightly between runs
because of random initialization and training behavior. The values
documented in this README correspond to the recorded experiment outputs
from the project notebook.
