# E-Library Data Insights Dashboard

## Project Description

The E-Library Data Insights Dashboard is a Python-based terminal application that helps analyze and visualize book borrowing trends in a library. It allows users to load data from a CSV file, calculate useful statistics, filter transactions based on different criteria, generate summary reports, and visualize trends using various charts.

This project demonstrates the use of:

- Python control structures and arrays
- Object-Oriented Programming (OOP)
- NumPy and Pandas for data analysis and processing
- Matplotlib and Seaborn for data visualization

---


## Features

- Load and validate a CSV dataset
- View statistics (most borrowed book, average borrowing duration, busiest day)
- Filter transactions by genre, date range, and borrowing duration
- Generate a summary report of user activity
- Visualize data using:
  - Bar chart for top 5 most borrowed books
  - Line chart for monthly borrowing trends
  - Pie chart for genre distribution
  - Heatmap for borrowing activity by day and hour

---

## Files Included

- `library_dashboard.py` – The main Python program
- `library_transactions.csv` – Sample dataset used for analysis
- `README.md` – Project documentation and instructions

---

## How to Run the Project

### Step 1: Install Python

Make sure Python is installed on your system (version 3.6 or above).

### Step 2: Install Required Libraries

Open the terminal or command prompt and run:

pip install pandas numpy matplotlib seaborn


### Step 3: Place Files

Make sure both `library_dashboard.py` and `library_transactions.csv` are in the same folder.

### Step 4: Run the Program

Navigate to the folder where your files are located and run the program using:

python library_dashboard.py


### Step 5: Follow the Menu

When the program runs, a menu will appear allowing you to:

1. Load Dataset  
2. View Statistics  
3. Filter Transactions  
4. Generate Summary Report  
5. Visualize Data  
6. Exit

Enter the number for the option you wish to perform.

---

## Sample CSV Format

Make sure your CSV file has the following columns:

- Transaction ID
- Date (YYYY-MM-DD)
- User ID
- Book Title
- Genre
- Borrowing Duration (Days)

Example:

Transaction ID,Date,User ID,Book Title,Genre,Borrowing Duration (Days)
T0001,2025-01-03,U1001,The Alchemist,Fiction,10
T0002,2025-01-04,U1002,Atomic Habits,Self-help,7

---

## Developer

Pooja Suthar  

---

## Notes

- The program handles missing or incorrect data automatically.
- All features work with any dataset that follows the correct column structure.
- You can use your own CSV file for testing by placing it in the same directory.

