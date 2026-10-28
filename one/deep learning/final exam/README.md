# Deep Learning Practical Exam -- Set A

This repository contains five mini-projects completed as part of the
Deep Learning Practical Exam -- Set A. The projects cover neural
networks, image processing, image classification, time-series
forecasting, and sentiment analysis.

## Projects

### 1. ANN -- Diabetes Prediction

-   **Dataset:** Pima Indians Diabetes dataset (768 rows, 8 input
    features and 1 target column).
-   **Preprocessing:** Replaced zero values in selected columns
    (`Glucose`, `BloodPressure`, `SkinThickness`, `Insulin`, and `BMI`)
    with column medians; scaled features with `StandardScaler`.
-   **Model:** Fully connected neural network with hidden layers of 16
    and 8 ReLU units and a sigmoid output.
-   **Reported test results:** Accuracy **74.03%**, precision
    **0.6346**, recall **0.6111**, and F1-score **0.6226**.
-   **Saved model:** `ann_diabetes_model.h5`

### 2. OpenCV -- Image Processing

-   Processed five images through a sequence of image-processing steps.
-   Resized images to 128 × 128 pixels, converted them to grayscale,
    applied Gaussian blur, and detected edges using Canny.
-   Identified the largest contour and drew a green bounding rectangle.
-   Created a 5 × 5 comparison grid showing the original, resized,
    grayscale, edge, and contour images.
-   **Output:** `outputs/opencv_5x5_grid.png` (if saved at the path used
    in the notebook).

### 3. CNN -- CIFAR-10 Image Classification

-   **Dataset:** First 20,000 training images and first 4,000 test
    images from CIFAR-10.
-   **Preprocessing:** Normalized pixel values to the range 0--1 and
    one-hot encoded the labels.
-   **Model:** Two convolutional layers, two max-pooling layers, a
    flatten layer, a 64-unit dense layer, and a 10-unit softmax output.
-   **Training:** 10 epochs, batch size 64.
-   **Evaluation:** Test accuracy, classification report, and visual
    comparison of true and predicted labels.
-   **Saved model:** `cnn_cifar10_model.h5`
-   Record the test accuracy from the final corrected model evaluation
    in your report.

### 4. RNN -- Airline Passenger Prediction

-   **Dataset:** Monthly airline passenger counts from January 1949 to
    December 1960 (144 records).
-   **Preprocessing:** Min-max scaled passenger counts and created
    sequences using the previous 12 months to predict the next month.
-   **Model:** SimpleRNN with 50 units and `tanh` activation, followed
    by a single-unit dense output.
-   **Training:** 50 epochs, batch size 16, chronological train/test
    split without shuffling.
-   **Reported test result:** RMSE **42.54 passengers**.
-   **Saved model:** `rnn_airline_model.h5`

### 5. Transformer -- Sentiment Analysis

-   **Model:** `distilbert-base-uncased-finetuned-sst-2-english` through
    the Hugging Face sentiment-analysis pipeline.
-   **Data:** 25 self-written reviews: 10 positive, 10 negative, and 5
    ambiguous/neutral.
-   **Reported result:** 20 out of 20 clear positive/negative reviews
    classified correctly (100% on this small, manually created set).
-   The selected pretrained model outputs positive or negative labels;
    it does not directly provide a neutral class.
-   **Output:** `transformer_sentiment_results.csv`

## Repository Structure

Organize the repository in the following way. Keep only files and
folders that are actually present in your project.

``` text
deep-learning-practical-exam-set-a/
├── DeepLearning_Practical_Exam_SetA.ipynb
├── README.md
├── requirements.txt
├── summary_report.md
├── models/
│   ├── ann_diabetes_model.h5
│   ├── cnn_cifar10_model.h5
│   └── rnn_airline_model.h5
├── images/
│   └── (five input images for the OpenCV project)
└── outputs/
    ├── opencv_5x5_grid.png
    └── transformer_sentiment_results.csv
```

If the model files are currently saved in the notebook's working
directory, move them into `models/` and update the notebook paths as
needed. Likewise, adjust the output paths to match the files you
actually saved.

## Requirements

The notebook uses Python and the following libraries:

-   TensorFlow / Keras
-   OpenCV (`opencv-python`)
-   Transformers
-   pandas
-   NumPy
-   Matplotlib
-   scikit-learn
-   seaborn

Install the dependencies with:

``` bash
pip install -r requirements.txt
```

A suitable `requirements.txt` can contain:

``` text
tensorflow
keras
opencv-python
transformers
pandas
numpy
matplotlib
seaborn
scikit-learn
```

## How to Run

1.  Clone or download this repository.
2.  Install the required libraries using
    `pip install -r requirements.txt`.
3.  Open `DeepLearning_Practical_Exam_SetA.ipynb` in Jupyter Notebook or
    JupyterLab.
4.  Run the notebook cells in order.
5.  Ensure the five OpenCV input images are available at the paths
    referenced in the notebook.
6.  The CIFAR-10 dataset and pretrained Transformer model may need to be
    downloaded on first use. An internet connection may be required.
7.  Review the generated plots, classification reports, saved models,
    and output files.

## Notes and Limitations

-   Model results depend on the data, preprocessing, and environment
    used when the notebook was run.
-   The Transformer result is based on only 20 clear, self-written
    positive/negative reviews and should not be interpreted as a
    guarantee of real-world accuracy.
-   The sentiment model is binary and cannot directly classify neutral
    sentiment.
-   Confirm that model files, plots, the notebook, and reports exist at
    the paths listed above before submitting.

## Author
Pooja Suthar
Course- AI ML & Data Science
RED & WHITE INSTITUTE
