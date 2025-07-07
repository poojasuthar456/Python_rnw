import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from datetime import datetime 

class LibraryDashboard:
    def __init__(self):
        self.data= None

    def load_data(self):
        try:
            file_path = input("Enter CSV file path: ")
            self.data = pd.read_csv(file_path)

            # Validate required columns
            required_columns = ["Transaction ID", "Date", "User ID", "Book Title", "Genre", "Borrowing Duration (Days)"]
            if not all(column in self.data.columns for column in required_columns):
                raise ValueError("CSV file is missing one or more required columns.")

            # Convert Date column to datetime
            self.data['Date'] = pd.to_datetime(self.data['Date'], errors='coerce')

            # Handle missing or invalid entries
            if self.data.isnull().any().any():
                print("Warning: Missing or invalid entries found. Cleaning data...")
                self.data.dropna(inplace=True)

            print("Dataset loaded and validated successfully.")

        except FileNotFoundError:
            print("File not found.")
        except pd.errors.ParserError:
            print("Error parsing the file.")
        except pd.errors.EmptyDataError:
            print("File is empty.")
        except Exception as e:
            print(f"Unexpected error: {e}")

    def calculate_statistics(self):
        if self.data is None or self.data.empty:
            print("No data loaded. Please load a dataset first.")
            return

        # 1. Most borrowed book
        most_borrowed_book = self.data['Book Title'].value_counts().idxmax()
        borrow_count = self.data['Book Title'].value_counts().max()

        # 2. Average borrowing duration
        average_duration = self.data['Borrowing Duration (Days)'].mean()

        # 3. Busiest day (day with most transactions)
        busiest_day = self.data['Date'].dt.date.value_counts().idxmax()
        busiest_day_count = self.data['Date'].dt.date.value_counts().max()

        # Display results
        print("\n--- Library Usage Statistics ---")
        print(f"Most Borrowed Book: {most_borrowed_book} ({borrow_count} times)")
        print(f"Average Borrowing Duration: {average_duration:.2f} days")
        print(f"Busiest Day: {busiest_day} ({busiest_day_count} transactions)")

    def filter_transactions(self, genre=None, start_date=None, end_date=None, min=None, max=None):
        if self.data is None or self.data.empty:
            print("No data loaded. Please load a dataset first.")
            return

        filtered_data = self.data.copy()

        # Filter by genre
        if genre:
            filtered_data = filtered_data[filtered_data['Genre'].str.lower() == genre.lower()]

        # Filter by date range
        if start_date:
            try:
                start_date = pd.to_datetime(start_date)
                filtered_data = filtered_data[filtered_data['Date'] >= start_date]
            except Exception:
                print("Invalid start date format. Use YYYY-MM-DD.")

        if end_date:
            try:
                end_date = pd.to_datetime(end_date)
                filtered_data = filtered_data[filtered_data['Date'] <= end_date]
            except Exception:
                print("Invalid end date format. Use YYYY-MM-DD.")

        # Filter by borrowing duration
        if min:
            filtered_data = filtered_data[filtered_data['Borrowing Duration (Days)'] >= min]
        if max:
            filtered_data = filtered_data[filtered_data['Borrowing Duration (Days)'] <= max]

        # Show results
        if filtered_data.empty:
            print("No transactions matched the given filters.")
        else:
            print(f"\nFiltered {len(filtered_data)} transaction(s):")
            print(filtered_data.head(10))  # Display first 10 rows

        return filtered_data
    def generate_report(self):
        if self.data is None or self.data.empty:
            print("No data loaded. Please load a dataset first.")
            return

        total_transactions = len(self.data)
        total_users = self.data['User ID'].nunique()
        total_books = self.data['Book Title'].nunique()
        most_common_genre = self.data['Genre'].value_counts().idxmax()
        avg_duration = self.data['Borrowing Duration (Days)'].mean()
        most_active_user = self.data['User ID'].value_counts().idxmax()
        user_borrow_count = self.data['User ID'].value_counts().max()

        print("\n=== E-Library Summary Report ===")
        print(f"Total Transactions        : {total_transactions}")
        print(f"Total Unique Users        : {total_users}")
        print(f"Total Unique Books        : {total_books}")
        print(f"Most Borrowed Genre       : {most_common_genre}")
        print(f"Average Borrowing Duration: {avg_duration:.2f} days")
        print(f"Most Active User          : {most_active_user} ({user_borrow_count} borrowings)")

    def plot_top_books(self):
# Bar Chart
        if self.data is None or self.data.empty:
            print("No data loaded. Please load a dataset first.")
            return

        top_books = self.data['Book Title'].value_counts().head(5)

        plt.figure(figsize=(8, 6))
        sns.barplot(x=top_books.values, y=top_books.index, palette="viridis")
        plt.title("Top 5 Most Borrowed Books")
        plt.xlabel("Number of Borrowings")
        plt.ylabel("Book Title")
        plt.tight_layout()
        plt.show()

    def plot_borrowing_trend(self):
# Line Graph
        if self.data is None or self.data.empty:
            print("No data loaded. Please load a dataset first.")
            return

        self.data['Month'] = self.data['Date'].dt.to_period("M").astype(str)
        trend = self.data.groupby('Month').size()

        plt.figure(figsize=(10, 5))
        trend.plot(kind='line', marker='o', color='teal')
        plt.title("Monthly Borrowing Trend")
        plt.xlabel("Month")
        plt.ylabel("Number of Borrowings")
        plt.xticks(rotation=45)
        plt.tight_layout()
        plt.show()

    def plot_genre_distribution(self):
# Pie Chart
        if self.data is None or self.data.empty:
            print("No data loaded. Please load a dataset first.")
            return

        genre_counts = self.data['Genre'].value_counts()

        plt.figure(figsize=(6, 6))
        plt.pie(genre_counts, labels=genre_counts.index, autopct='%1.1f%%', startangle=140)
        plt.title("Distribution of Borrowed Books by Genre")
        plt.tight_layout()
        plt.show()
    
    def plot_borrowing_bydayNtime(self):
# Heatmap
        if self.data is None or self.data.empty:
            print("No data loaded. Please load a dataset first.")
            return

        # Simulate borrow time as random hour between 8 and 20 (8 AM to 8 PM)
        self.data['Hour'] = np.random.randint(8, 21, size=len(self.data))
        self.data['Weekday'] = self.data['Date'].dt.day_name()

        heatmap_data = self.data.groupby(['Weekday', 'Hour']).size().unstack().fillna(0)

        # Reorder weekdays
        weekday_order = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
        heatmap_data = heatmap_data.reindex(weekday_order)

        plt.figure(figsize=(12, 6))
        sns.heatmap(heatmap_data, cmap="YlGnBu", linewidths=0.5, linecolor='gray')
        plt.title("Borrowing Activity Heatmap (Day vs Hour)")
        plt.xlabel("Hour of Day")
        plt.ylabel("Day of Week")
        plt.tight_layout()
        plt.show()

    def show_visual_menu(self):
        while True:
            print("""--- Visualization Menu ---\n
                1. Top 5 Most Borrowed Books\n
                2. Monthly Borrowing Trend\n
                3. Genre Distribution\n
                4. Borrowing Activity Heatmap\n
                5. Back to Main Menu\n""")

            choice = input("Enter your choice (1–5): ")

            if choice == "1":
                self.plot_top_books()
            elif choice == "2":
                self.plot_borrowing_trend()
            elif choice == "3":
                self.plot_genre_distribution()
            elif choice == "4":
                self.plot_borrowing_bydayNtime()
            elif choice == "5":
                break
            else:
                print("Invalid choice. Please try again.")

def main():
    dashboard = LibraryDashboard()

    while True:
        print("""=== E-Library Data Insights Dashboard ===\n
            1. Load Dataset\n
            2. View Statistics\n
            3. Filter Transactions\n
            4. Generate Summary Report\n
            5. Visualize Data\n
            6. Exit""")

        choice = input("Enter your choice (1–6): ")

        if choice == "1":
            dashboard.load_data()

        elif choice == "2":
            dashboard.calculate_statistics()

        elif choice == "3":
            # Ask user for filtering options
            genre = input("Filter by genre (or leave blank): ").strip() or None
            start_date = input("Start date (YYYY-MM-DD) or leave blank: ").strip() or None
            end_date = input("End date (YYYY-MM-DD) or leave blank: ").strip() or None

            min_input = input("Minimum borrowing duration (or leave blank): ").strip()
            max_input = input("Maximum borrowing duration (or leave blank): ").strip()

            min = int(min) if min_input else None
            max = int(max_input) if max_input else None

            dashboard.filter_transactions(
                genre=genre,
                start_date=start_date,
                end_date=end_date,
                min=min,
                max=max
            )
            
        elif choice == "4":
            dashboard.generate_report()

        elif choice == "5":
            dashboard.show_visual_menu()

        elif choice == "6":
            print("Exiting dashboard. Goodbye!")
            break
        else:
            print("Invalid choice. Please enter a number from 1 to 6.")

if __name__ == "__main__":
    main()