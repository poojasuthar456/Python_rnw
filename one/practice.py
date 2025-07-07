import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

class SalesDataAnalyzer:
    def __init__(self):
        self.data = None

def load_data(self, file_path):
    try:
        self.data = pd.read_csv(file_path)
        print("Dataset loaded successfully!")
    except Exception as e:
        print(f"Error loading dataset: {e}")


    def explore_data(self):
        print("Exploring Data:")
        print("1. Display the first 5 rows")
        print("2. Display the last 5 rows")
        print("3. Display column names")
        print("4. Display data types")
        print("5. Display basic info")
        choice = input("Enter your choice: ")
        if choice == '1':
            print(self.data.head())
        elif choice == '2':
            print(self.data.tail())
        elif choice == '3':
            print(self.data.columns)
        elif choice == '4':
            print(self.data.dtypes)
        elif choice == '5':
            print(self.data.info())
        else:
            print("Invalid choice!")

    def clean_data(self):
        if self.data.isnull().values.any():
            print("Handling missing values...")
            print("1. Fill missing values with mean")
            print("2. Drop rows with missing values")
            print("3. Replace missing values with a specific value")
            choice = input("Enter your choice: ")
            if choice == '1':
                self.data.fillna(self.data.mean(), inplace=True)
                print("Missing values filled with mean.")
            elif choice == '2':
                self.data.dropna(inplace=True)
                print("Rows with missing values dropped.")
            elif choice == '3':
                value = input("Enter the value to replace missing values: ")
                self.data.fillna(value, inplace=True)
                print(f"Missing values replaced with {value}.")
            else:
                print("Invalid choice!")
        else:
            print("No missing values found in the dataset!")

    def mathematical_operations(self):
        # Example mathematical operation
        total_sales = self.data['Sales'].sum()
        print(f"Total Sales: {total_sales}")

    def combine_data(self, other_dataframe):
        self.data = pd.concat([self.data, other_dataframe], ignore_index=True)

    def split_data(self, criteria):
        return {key: group for key, group in self.data.groupby(criteria)}

    def search_sort_filter(self):
        # Example search, sort, and filter
        search_term = input("Enter product name to search: ")
        filtered_data = self.data[self.data['Product'].str.contains(search_term, na=False)]
        print(filtered_data)

    def aggregate_functions(self):
        print("Aggregating functions:")
        print("1. Sum")
        print("2. Mean")
        choice = input("Enter your choice: ")
        if choice == '1':
            print(self.data['Sales'].sum())
        elif choice == '2':
            print(self.data['Sales'].mean())
        else:
            print("Invalid choice!")

    def statistical_analysis(self):
        print("Descriptive Statistics:")
        print(self.data.describe())

    def create_pivot_table(self):
        pivot_table = self.data.pivot_table(values='Sales', index='Product', columns='Region', aggfunc='sum')
        print(pivot_table)

    def visualize_data(self):
        print("Data Visualization:")
        print("1. Bar Plot")
        print("2. Line Plot")
        print("3. Scatter Plot")
        print("4. Pie Chart")
        print("5. Histogram")
        choice = input("Enter your choice: ")
        if choice == '1':
            self.data['Product'].value_counts().plot(kind='bar')
            plt.title('Sales by Product')
            plt.show()
        elif choice == '2':
            self.data.plot(x='Year', y='Sales', kind='line')
            plt.title('Sales Over Years')
            plt.show()
        elif choice == '3':
            x_col = input("Enter x-axis column name: ")
            y_col = input("Enter y-axis column name: ")
            plt.scatter(self.data[x_col], self.data[y_col])
            plt.title('Scatter Plot')
            plt.xlabel(x_col)
            plt.ylabel(y_col)
            plt.show()
        elif choice == '4':
            self.data['Product'].value_counts().plot(kind='pie')
            plt.title('Sales Distribution by Product')
            plt.show()
        elif choice == '5':
            self.data['Sales'].plot(kind='hist', bins=10)
            plt.title('Sales Histogram')
            plt.show()
        else:
            print("Invalid choice!")

    def save_visualization(self, filename):
        plt.savefig(filename)
        print(f"Visualization saved as {filename} successfully!")



# Main
def main():
    analyzer = SalesDataAnalyzer()
    while True:
        print("\n========== Data Analysis & Visualization Program ==========")
        print("1. Load Dataset")
        print("2. Explore Data")
        print("3. Perform DataFrame Operations")
        print("4. Handle Missing Data")
        print("5. Generate Descriptive Statistics")
        print("6. Data Visualization")
        print("7. Save Visualization")
        print("8. Exit")
        choice = input("Enter your choice: ")
        
        if choice == '1':
            file_path = input("Enter the path of the dataset (CSV file): ")
            analyzer.load_data(file_path)
        elif choice == '2':
            analyzer.explore_data()
        elif choice == '3':
            analyzer.mathematical_operations()
        elif choice == '4':
            analyzer.clean_data()
        elif choice == '5':
            analyzer.statistical_analysis()
        elif choice == '6':
            analyzer.visualize_data()
        elif choice == '7':
            filename = input("Enter file name to save the plot (e.g., scatter_plot.png): ")
            analyzer.save_visualization(filename)
        elif choice == '8':
            print("Exiting the program. Goodbye!")
            break
        else:
            print("Invalid choice!")

if __name__ == "__main__":
    main()
