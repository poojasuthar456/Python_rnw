# datetime 

from datetime import datetime, timedelta
import time

def current_datetime():
    now = datetime.now()
    print("current Date and Time:", now.strftime("%Y-%m-%d %H:%M:%S"))

def difference():
    try: 
        date1 = input("Enter first date (YYYY-MM-DD):")
        date2 = input("Enter second date (YYYY-MM-DD): ")
        d1 = datetime.strptime(date1, "%Y-%m-%d")
        d2 = datetime.strptime(date2, "%Y-%m-%d")
        differ = abs(d2-d1)
        print("Difference:", differ.days, "days")
    except ValueError:    
        print("Invalid date format. Use YYYY-MM-DD.")

def custome_date_format():

    try:
        date_input = input("enter date (YYYY-MM-DD):")
        d = datetime.strptime(date_input, "%Y-%m-%d")
        print("Choose format:")
        print("1. DD-MM-YYYY")
        print("2. MM/DD/YYYY")
        print("3. Full Month Name")
        choice = input("Enter choice: ")

        if choice == '1':
            print("Formatted Date:", d.strftime("%d-%m-%Y"))
        elif choice == '2':
            print("Formatted Date:", d.strftime("%m/%d/%Y"))
        elif choice == '3':
            print("Formatted Date:", d.strftime("%B %d, %Y"))
        else:
            print("Invalid choice.")
    except ValueError:
        print("Invalid date format.")

def stopwatch():
    input("Please Enter to start the stopwatch...")
    start = time.time()
    input("Please Enter to stop the stopwatch...")
    end = time.time()
    duration = round(end - start, 2)
    print(f"Stopwatch duration: {duration} seconds")

def timer():
    try:
        seconds = int(input("Enter countdown time in seconds: "))
        for i in range(seconds, 0, -1):
            print(i, "seconds remaining", end = '\r')
            time.sleep(1)
        print("Time's up!           ")
    except ValueError:
        print("Enter a valid number.")

def dT():       #dT means datetime
    while True:

        choice = input("""Enter your choice: \n
            --- Datetime and Time Operations --- \n
            1. Display current date and time \n
            2. Calculate difference between two dates\n
            3. Format date into custom format\n
            4. Stopwatch\n
            5. Countdown Timer\n
            6. Back to Main Menu """)
        
        if choice == '1':
            current_datetime()
        elif choice == '2':
            difference()
        elif choice == '3':
            custome_date_format()
        elif choice == '4':
            stopwatch()
        elif choice == '5':
            timer()
        elif choice == '6':
            break
        else:
            print("Invalid choice.")