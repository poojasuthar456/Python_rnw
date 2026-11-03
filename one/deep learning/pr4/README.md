# PR 4 — CNN from Scratch: CIFAR-10 Image Classifier

**Institute:** Red & White Skill Education  
**Subject:** Deep Learning  
**Project:** Practical Report 4 — Project A: CNN from Scratch  
**Dataset:** CIFAR-10  
**Framework:** TensorFlow / Keras

## Project Overview

This project explores convolutional neural networks (CNNs) for image classification using the CIFAR-10 dataset. It covers convolution operations, padding and strides, pooling, CNN architectures, backpropagation, data augmentation, transfer learning, fine-tuning, and residual connections.

The objective is to build and evaluate multiple image-classification models and compare their performance on the CIFAR-10 test set.

## Dataset

CIFAR-10 contains 60,000 colour images across 10 classes. Each image has a resolution of 32 × 32 pixels with three RGB channels.

The classes are:

1. Airplane
2. Automobile
3. Bird
4. Cat
5. Deer
6. Dog
7. Frog
8. Horse
9. Ship
10. Truck

The dataset contains 50,000 training images and 10,000 test images.

**Training limitation:** Because of the available CPU and memory resources, the experiments in this project used the first 10,000 training images for model training. Evaluation was performed on the full 10,000-image test set. The notebook used the locally downloaded and extracted CIFAR-10 Python archive because the built-in Keras download was taking too long.

## Project Tasks

### A1 — Data Loading, EDA and Preprocessing
- Loaded and inspected the CIFAR-10 images and labels.
- Visualised samples from all 10 classes.
- Examined pixel distributions before and after normalisation.
- Normalised image values to the range [0, 1].
- One-hot encoded the class labels.
- Compared CNNs and ANNs for image classification.

### A2 — Convolution, Padding and Strides
- Demonstrated manual convolution using `scipy.signal.convolve2d`.
- Compared `VALID` and `SAME` padding.
- Investigated the effect of different strides.
- Visualised feature maps produced by a convolutional layer.

### A3 — Pooling and CNN Architectures
- Compared max pooling and average pooling.
- Examined flattening and feature-map dimensions.
- Built a LeNet-5 model.
- Built a custom CNN inspired by VGG-style architecture.

### A4 — CNN Training and Evaluation
- Compiled and trained the custom CNN.
- Used EarlyStopping and ReduceLROnPlateau callbacks.
- Evaluated the model on the CIFAR-10 test set.
- Analysed the confusion matrix and misclassified images.

### A5 — Data Augmentation
- Applied transformations using `ImageDataGenerator`.
- Trained a CNN using augmented images.
- Built a second augmentation pipeline using Keras preprocessing layers.
- Compared test accuracy across the augmentation approaches.

### A6 — Transfer Learning and Residual Connections
- Used MobileNetV2 pretrained on ImageNet.
- Performed feature extraction with the pretrained base frozen.
- Fine-tuned the top 30 layers using a low learning rate.
- Compared six models in a results table.
- Built a residual block using the Keras Functional API.

## Model Results

The following table reports the test accuracies measured in the notebook.

| Model | Architecture | Augmentation | Transfer Learning | Test Accuracy | Parameters |
|---|---|---|---|---:|---:|
| LeNet-5 | LeNet-5 | No | No | 42.34% | 62,006 |
| CNN Scratch No Aug | Custom CNN | No | No | 71.55% | 175,018 |
| CNN Scratch + Aug | Custom CNN | ImageDataGenerator | No | 55.06% | 175,018 |
| CNN + Keras Aug Layers | Custom CNN | Keras Layers | No | 67.86% | 175,018 |
| MobileNetV2 Feature Extraction | MobileNetV2 | No | Yes | **80.03%** | 2,423,242 |
| MobileNetV2 Fine-Tuned | MobileNetV2 | No | Yes | 76.22% | 2,423,242 |

### Observations

- LeNet-5 achieved 42.34% test accuracy.
- The custom CNN trained from scratch without augmentation achieved 71.55%.
- In these experiments, ImageDataGenerator augmentation and Keras augmentation layers did not outperform the custom CNN trained without augmentation.
- MobileNetV2 feature extraction achieved the highest test accuracy of 80.03%.
- Fine-tuning MobileNetV2 achieved 76.22%, lower than feature extraction in this experiment.

These results are specific to the training setup and the 10,000-image training subset. They should not be interpreted as a general ranking of these methods under all training conditions.

## Residual Block

A residual block was implemented using the Functional API. It contains:
- A shortcut path with a 1 × 1 convolution.
- A main path with two 3 × 3 convolutional layers.
- An addition operation to combine both paths.
- A ReLU activation after the addition.

**Output shape:** `(None, 32, 32, 64)`  
**Total parameters:** `78,016`

## Installation

Create and activate a virtual environment if desired, then install the dependencies:

```bash
pip install -r requirements.txt
```

## Running the Notebook

1. Clone or download this repository.
2. Install the packages listed in `requirements.txt`.
3. Make sure the CIFAR-10 Python archive has been downloaded and extracted as expected by the notebook's data-loading cells.
4. Open `DL_PR4A.ipynb` in Jupyter Notebook or VS Code.
5. Run the notebook cells in order.

> Note: The dataset-loading cell may need its local data path adjusted to match the location where the CIFAR-10 archive was extracted.

## Repository Structure

A suggested repository structure is:

```text
PR4-CIFAR10-CNN/
├── DL_PR4A.ipynb
├── DL_PR4A.html
├── requirements.txt
├── README.md
├── data/
│   └── cifar-10-batches-py/
└── plots/
    ├── sample_images.png
    ├── training_curves.png
    ├── confusion_matrix.png
    └── model_comparison.png
```

The `data/` directory is shown for reference. Do not commit the full CIFAR-10 dataset to GitHub unless your instructor specifically asks for it. Save notebook plots in `plots/` if you export them separately.

## Technologies Used

- Python
- TensorFlow and Keras
- NumPy
- Pandas
- Matplotlib
- SciPy
- Scikit-learn
- Jupyter Notebook

## Conclusion

This project provided practical experience with CNN architecture design, convolution and pooling operations, model training, data augmentation, transfer learning, fine-tuning, and residual connections. Among the six evaluated models, MobileNetV2 feature extraction achieved the highest test accuracy of **80.03%** under the training conditions used in this project.
