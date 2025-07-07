import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

class SalesDataAnalyzer:
    def __init__(self):
        self.data = None
        
#In the function below we will load the data by taking the file path from user and i also created some possible error exception.
    def load_data(self):
        try:
            file_path = input("Enter CSV file path: ")
            self.data = pd.read_csv(file_path)
            print("Dataset loaded successfully!")
        except FileNotFoundError:
            print("File not found.")
        except pd.errors.ParserError:
            print("Error parsing the file.")
        except pd.errors.EmptyDataError:
            print("File is empty.")        
        except Exception as e:
            print(f"Unexpected error: {e}")

#In the function below we'll explore the data and see what the csv_file holds inside.
    def explore_data(self):
        while True:
            print("""===========Explore Data===========\n
        1. First 5 rows\n
        2. Last 5 rows\n
        3. Column names\n
        4. Data types\n
        5. Basic info\n
        6. Back to main menu\n """)
            ch = input("Enter your choice:  ")
            
            if ch == '1':
                print(self.data.head())
            elif ch == '2':
                print(self.data.tail())
            elif ch == '3':
                print(self.data.columns)
            elif ch == '4':
                print(self.data.dtypes)
            elif ch == '5':
                print(self.data.info())
            elif ch == '6':
                break
            else:
                print("Invalid choice")

# In the function below helps in coverting the datatype as it allow dynamic conversion of a column to datetime format, which is extremely useful in real-world data analysis tasks.
    def convert_data_type(self):
        print("Available columns:", list(self.data.columns))
        col = input("Enter column to convert to datetime: ")
        new_choice = input("Format? (1 = dayfirst, 2 = yearfirst): ")
        try:
            if new_choice == '1':
                self.data[col] = pd.to_datetime(self.data[col], dayfirst=True)
            elif new_choice == '2':
                self.data[col] = pd.to_datetime(self.data[col], yearfirst=True)
            else:
                print("Invalid format")
            print("Data type converted successfully.")
        except Exception as e:
            print(f"Error converting type: {e}")

#the function below helps the user to clean or handle missing value. This method helps clean the dataset efficiently and flexibly before performing:Statstical analysis and Visualization
    def handle_missing_data(self):
        while True:
            print("""===========Handle Missing Data===========\n
        1. Check missing\n
        2. Drop rows/columns\n
        3. Fill with specific value\n
        4. Fill with mean/median/mode\n
        5. Forward fill\n
        6. Backward fill\n
        7. Interpolate\n
        8. Back to menu\n""")
            choice = input("Enter your choice: ")
            
            if choice == '1':
                print(self.data.isnull().sum())

            elif choice == '2':
                axis = int(input("Enter 0 for rows or 1 for columns: "))
                self.data.dropna(axis=axis, inplace=True)
                print("Dropped successfully.")

            elif choice == '3':
                value = input("Enter value to fill: ")
                self.data.fillna(value, inplace=True)
                print(f"Filled missing values with {value}")

            elif choice == '4':
                col = input("Enter column name: ")
                method = input("Method (mean/median/mode): ").lower()
                
                try:
                    if method == 'mean':
                        val = self.data[col].mean()
                    elif method == 'median':
                        val = self.data[col].median()
                    elif method == 'mode':
                        val = self.data[col].mode()[0]
                    else:
                        print("Invalid method")
                        continue
                    self.data[col].fillna(val, inplace=True)
                    print(f"Filled {col} using {method}: {val}")
                except Exception as e:
                    print(f"Error: {e}")

            elif choice == '5':
                self.data.fillna(method='ffill', inplace=True)
                print("Forward fill applied.")

            elif choice == '6':
                self.data.fillna(method='bfill', inplace=True)
                print("Backward fill applied.")

            elif choice == '7':
                self.data.interpolate(inplace=True)
                print("Interpolation done.")

            elif choice == '8':
                break
            else:
                print("Invalid choice")

# In the function below provides interactive operations that allow the user to manipulate the structure of the DataFrame.
    def dataframe_operations(self):
        while True:
            print("""
        DataFrame Operations
        1. Add column
        2. Drop column
        3. Rename column
        4. Group by
        5. Sort
        6. Back to menu
            """)
            ch = input("Enter your choice: ")
            if ch == '1':
                col_name = input("New column name: ")
                default_value = input("Default value: ")
                self.data[col_name] = default_value
                print("Column added.")

            elif ch == '2':
                col = input("Enter column to drop: ")
                self.data.drop(columns=[col], inplace=True)
                print("Column dropped.")

            elif ch == '3':
                old = input("Old column name: ")
                new = input("New name: ")
                self.data.rename(columns={old: new}, inplace=True)
                print("Renamed.")

            elif ch == '4':
                col = input("Column to group by: ")
                print(self.data.groupby(col).size())

            elif ch == '5':
                print("Available columns:", list(self.data.columns))
                col = input("Sort by: ")
                if col not in self.data.columns:
                    print(f"Column '{col}' not found in the dataset.")
                    continue
                asc = input("Ascending? (True/False): ").lower() == 'true'
                self.data.sort_values(by=col, ascending=asc, inplace=True)
                print("Data sorted.")

            elif ch == '6':
                break
            else:
                print("Invalid choice")

# The function below display descriptive statistics and summary measures of the dataset or specific columns. It's your one-stop tool for understanding the data numerically.
    def show_statistics(self):
        while True:
            print("""
        Statistics
        1. Describe all
        2. Column describe
        3. Median
        4. Mode
        5. Variance
        6. Standard Deviation
        7. Back to menu
            """)
            ch = input("Enter your choice: ")
            if ch == '1':
                print(self.data.describe())
            else:
                col = input("Enter column: ")
                try:
                    if ch == '2':
                        print(self.data[col].describe())
                    elif ch == '3':
                        print(f"Median of {col}: {self.data[col].median()}")
                    elif ch == '4':
                        print(f"Mode of {col}: {self.data[col].mode()[0]}")
                    elif ch == '5':
                        print(f"Variance of {col}: {self.data[col].var()}")
                    elif ch == '6':
                        print(f"Std Dev of {col}: {self.data[col].std()}")
                    elif ch == '7':
                        break
                    else:
                        print("Invalid choice")
                except Exception as e:
                    print(f"Error: {e}")

# The function helps in explaining our data visualy and helps us analyse it more efficiently.
    def visualize_data(self):
        if self.data is None:
            print("No data loaded.")
            return

        cols = list(self.data.columns)
        print("Available columns:", cols)

        print("""==========Visualization Options:==========\n
        1. Bar Plot\n
        2. Line Plot\n
        3. Scatter Plot\n
        4. Pie Chart\n
        5. Histogram\n""")
        choice = input("Enter your choice: ")
        
        try:
            plt.figure(figsize=(10, 6))

            if choice == '1':
                col = input("Categorical column: ")
                self.data[col].value_counts().plot(kind='bar')
                plt.title(f'Bar Plot of {col}')
                plt.xlabel(col)
                plt.ylabel('Count')
                plt.grid(True)

            elif choice == '2':
                x = input("X-axis: ")
                y = input("Y-axis: ")
                sns.lineplot(data=self.data, x=x, y=y, marker='o')
                plt.title(f'Line Plot of {y} over {x}')
                plt.grid(True)

            elif choice == '3':
                x = input("X-axis: ")
                y = input("Y-axis: ")
                sns.scatterplot(data=self.data, x=x, y=y)
                plt.title("Scatter Plot")
                plt.grid(True)

            elif choice == '4':
                col = input("Column for pie chart: ")
                pie_data = self.data[col].value_counts()
                plt.pie(pie_data, labels=pie_data.index, autopct='%1.1f%%', startangle=90)
                plt.title(f"Pie Chart of {col}")
                plt.axis('equal')

            elif choice == '5':
                col = input("Numeric column for histogram: ")
                sns.histplot(self.data[col], kde=True, bins=20)
                plt.title(f"Histogram of {col}")
                plt.grid(True)

            else:
                print("Invalid choice")
                return

            plt.tight_layout()
            plt.show()

            save = input("Save plot? (y/n): ").lower()
            if save == 'y':
                name = input("Filename (without extension): ")
                plt.savefig(f"{name}.png")
                print(f"Plot saved as {name}.png")

        except Exception as e:
            print(f"Visualization error: {e}")

# The function below helps in saving the Graph created above.
    def save_visualization(self):
        try:
            name = input("Filename (without extension): ")
            extension = input("Enter file extension (png/pdf/jpg): ").lower()
            if extension in ['png', 'pdf', 'jpg']:
                plt.savefig(f"{name}.{extension}")
                print(f"Plot saved as {name}.{extension}")
            else:
                print("Invalid extension. Plot not saved.")
        except Exception as e:
            print(f"Error saving plot: {e}")

# Below is the Main menue where all the functions are called and will perform.
def main():
    analyzer = SalesDataAnalyzer()
    while True:
        print("""============Main Menu:============\n
        1. Load Dataset\n
        2. Explore Data\n
        3. Convert Data Types\n
        4. Handle Missing Data\n
        5. Perform Operations\n
        6. Show Statistics\n
        7. Visualize Data\n
        8. Save Visualization\n
        9. Exit\n""")
        choice = input("Enter your choice: ")
        
        if choice == '1':
            analyzer.load_data()
        elif choice == '2':
            analyzer.explore_data()
        elif choice == '3':
            analyzer.convert_data_type()
        elif choice == '4':
            analyzer.handle_missing_data()
        elif choice == '5':
            analyzer.dataframe_operations()
        elif choice == '6':
            analyzer.show_statistics()
        elif choice == '7':
            analyzer.visualize_data()
        elif choice == '8':
            analyzer.save_visualization()
        elif choice == '9':
            print("Exiting... Goodbye!")
            break
        else:
            print("Invalid choice")


if __name__ == "__main__":
    main()