import sys
from datetime_ import dT
from file_operation import file_operations
from mathamatices import math_data
from random_data import menu as random_menu
from uuid_ import uuid_menu



def display_banner():

    print("MULTI-UTILITY TOOLKIT".center(50))


def main_menu():

    while True:
        display_banner()
        choice = input("""Enter your choice (1-6):\n
        Main Menu:
        1. Date & Time Operations
        2. File Operations
        3. Math Operations
        4. Random Data Generaton                       
        5. UUID Generator
        6. Explore Module Attribution(dir())               
        7. Exit:\n""")
        
        
        if choice == '1':
            dT()
        elif choice == '2':
            file_operations()
        elif choice == '3':
            math_data()
        elif choice == '4':
            random_menu()
        elif choice == '5':
            uuid_menu()
        elif choice == '6':
            user_input = input("Enter module name: ")
            print(dir(user_input))
        elif choice == '7':
            print("\nThank you for using Multi-Utility Toolkit!")
            sys.exit()
        else:
            print("\nInvalid choice. Please enter a number between 1-6.")

if __name__ == "__main__":
    main_menu()