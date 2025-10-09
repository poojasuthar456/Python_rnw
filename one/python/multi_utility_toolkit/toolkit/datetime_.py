from toolkit import datetime_
import time

def display_current_datetime():
    now = datetime_.datetime_.now()
    print("Current Date and Time:", now.strftime("%Y-%m-%d %H:%M:%S"))

def calculate_date_difference():
    date_format = "%Y-%m-%d"
    try:
        date1 = input("Enter the first date (YYYY-MM-DD): ")
        date2 = input("Enter the second date (YYYY-MM-DD): ")
        d1 = datetime_.datetime_.strptime(date1, date_format)
        d2 = datetime_.datetime_.strptime(date2, date_format)
        diff = abs((d2 - d1).days)
        print(f"Difference: {diff} days")
    except ValueError:
        print("Invalid date format. Please use YYYY-MM-DD.")

def format_custom_date():
    try:
        date_str = input("Enter a date (YYYY-MM-DD): ")
        date = datetime_.datetime_.strptime(date_str, "%Y-%m-%d")
        custom_format = input("Enter custom format (e.g. %%d/%%m/%%Y %%I:%%M %%p): ")
        print("Formatted Date:", date.strftime(custom_format))
    except ValueError:
        print("Invalid input. Please check the date or format string.")

def run_stopwatch():
    input("Press Enter to start the stopwatch...")
    start = time.time()
    input("Press Enter to stop the stopwatch...")
    end = time.time()
    print(f"Elapsed Time: {round(end - start, 2)} seconds")

def countdown_timer():
    try:
        seconds = int(input("Enter countdown time in seconds: "))
        for i in range(seconds, 0, -1):
            print(i, end=" ", flush=True)
            time.sleep(1)
        print("\nTime's up!")
    except ValueError:
        print("Please enter a valid number.")

def datetime_menu():
    while True:
        print("""
Datetime and Time Operations:
1. Display current date and time
2. Calculate difference between two dates/times
3. Format date into custom format
4. Stopwatch
5. Countdown Timer
6. Back to Main Menu
        """)
        choice = input("Enter your choice: ")
        if choice == '1':
            display_current_datetime()
        elif choice == '2':
            calculate_date_difference()
        elif choice == '3':
            format_custom_date()
        elif choice == '4':
            run_stopwatch()
        elif choice == '5':
            countdown_timer()
        elif choice == '6':
            break
        else:
            print("Invalid choice. Please try again.")
