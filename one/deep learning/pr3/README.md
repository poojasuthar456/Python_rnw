# Computer Vision PR3: Image Processing, Face Detection & Object Detection

This project explores core computer vision techniques using **OpenCV**,
**YuNet face detection**, and **YOLOv8 object detection**. It also
combines face and object detection in a webcam pipeline and compares the
runtime performance of each approach.

## Project Objectives

-   Perform basic image processing and thresholding.
-   Apply morphological operations to images.
-   Use masks and bitwise operations.
-   Plot image histograms and adjust brightness and contrast.
-   Detect faces with OpenCV YuNet.
-   Detect objects with YOLOv8.
-   Run face and object detection using a webcam.
-   Combine YuNet and YOLOv8 into one real-time detection pipeline.
-   Benchmark and compare pipeline performance using FPS.

## Technologies Used

-   Python
-   OpenCV
-   NumPy
-   Matplotlib
-   Ultralytics YOLOv8

## Project Structure

``` text
pr3/
├── CV_PR3.ipynb
├── data/
│   ├── images/
│   │   ├── sample.jpg
│   │   ├── messi5.jpg
│   │   └── people_group.jpg
│   └── models/
│       └── face_detection_yunet_2023mar.onnx
├── models/
├── plots/
│   └── model_fps_comparison.png
└── README.md
```

The exact files in `data/images/` may differ depending on which sample
images are kept. The notebook and model paths should match your local
folder structure.

## Setup and Installation

### 1. Clone the repository

``` bash
git clone <your-github-repository-url>
cd pr3
```

### 2. Create and activate a virtual environment (optional but recommended)

On Windows:

``` bash
python -m venv .venv
.venv\Scripts\activate
```

### 3. Install dependencies

Install the libraries used in the notebook:

``` bash
pip install opencv-python opencv-contrib-python ultralytics matplotlib numpy jupyter
```

If you use a separate environment that already has these packages
installed, you can use that environment instead.

### 4. Check the required model and images

-   Place the YuNet ONNX model at
    `data/models/face_detection_yunet_2023mar.onnx`.
-   Place the sample images in `data/images/`.
-   The notebook loads YOLOv8 using `YOLO("yolov8n.pt")`. Ultralytics
    may download the model weights automatically the first time it runs
    if they are not already available.

## How to Run

1.  Open `CV_PR3.ipynb` in Jupyter Notebook or VS Code.
2.  Make sure the required image files and YuNet model are available at
    the paths used in the notebook.
3.  Run the notebook cells from top to bottom.
4.  Allow webcam access when running the webcam detection cells.
5.  Press the key specified in the notebook's webcam loop (commonly `q`)
    to close the webcam window.
6.  Review the generated plots and benchmark results.

## Work Completed

### Task 1 --- Image Processing and Morphology

-   Loaded an image and converted it to grayscale.
-   Applied binary thresholding.
-   Demonstrated erosion, dilation, opening, and closing.
-   Explored salt-and-pepper noise and different morphological kernel
    shapes and sizes.

### Task 2 --- Masks, Bitwise Operations, and Histograms

-   Created image masks using shapes.
-   Applied bitwise AND, OR, XOR, and NOT operations.
-   Applied a circular mask and demonstrated a watermark-style
    operation.
-   Plotted grayscale and color-channel histograms.
-   Adjusted brightness and contrast and compared histograms.

### Task 3 --- Face Detection with YuNet

-   Loaded the YuNet face-detection model through OpenCV.
-   Detected faces in sample images.
-   Tested different confidence thresholds.
-   Applied Gaussian blur to a detected face region.
-   Ran face detection using the webcam.

### Task 4 --- Object Detection with YOLOv8

-   Loaded the YOLOv8 Nano model.
-   Detected objects in an image.
-   Compared detections at different confidence thresholds.
-   Explored IoU thresholds and non-maximum suppression behaviour.
-   Counted detected object classes and plotted class counts.
-   Ran object detection using the webcam.

### Task 5 --- Combined Detection and Performance Comparison

-   Combined YuNet face detection and YOLOv8 object detection in a
    webcam pipeline.
-   Displayed face landmarks and detection boxes.
-   Benchmarked YuNet, YOLOv8, and the combined pipeline.
-   Plotted the FPS comparison.

## Benchmark Results

The following results were measured during one run on the development
machine. Performance can vary with hardware, image size, model versions,
and system load.

  Pipeline                    Average time per frame     FPS
  ------------------------- ------------------------ -------
  YuNet face detection                      71.33 ms   14.02
  YOLOv8 object detection                  241.68 ms    4.14
  Combined pipeline                        312.41 ms    3.20

In this run, YuNet was the fastest pipeline. YOLOv8 took longer per
frame, and combining both pipelines produced the lowest FPS because both
detection tasks were performed.

## Output

The notebook saves the FPS comparison plot to:

``` text
plots/model_fps_comparison.png
```

Other figures are displayed while running the notebook. If you want to
save additional figures, add `plt.savefig(...)` to the relevant plotting
cells.

## Notes and Limitations

-   Webcam performance depends on the computer and camera.
-   YOLOv8 may download its pretrained weights on the first run.
-   Detection results depend on the input image and confidence
    threshold.
-   The sample-image tests do not by themselves establish performance
    for every face angle or occlusion condition.
-   Make sure all file paths in the notebook are relative to the project
    root, or update them to match your own setup.

## Author

Pooja Suthar

Computer Vision Practical --- PR3

------------------------------------------------------------------------

*Educational project demonstrating image processing, face detection,
object detection, webcam integration, and basic performance
benchmarking.*
