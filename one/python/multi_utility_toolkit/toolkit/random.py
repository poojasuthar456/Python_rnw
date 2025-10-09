# toolkit/random.py
import random
import string

def generate_random_number():
    try:
        start = int(input("Enter start of range: "))
        end = int(input("Enter end of range: "))
        print(f"Random Number: {random.randint(start, end)}")
    except ValueError:
        print("Please enter valid integers.")

def generate_random_list():
    try:
        length = int(input("Enter the number of items: "))
        start = int(input("Enter start of range: "))
        end = int(input("Enter end of range: "))
        rand_list = [random.randint(start, end) for _ in range(length)]
        print("Random List:", rand_list)
    except ValueError:
        print("Please enter valid numbers.")

def create_random_password():
    try:
        length = int(input("Enter password length: "))
        characters = string.ascii_letters + string.digits + string.punctuation
        password = ''.join(random.choices(characters, k=length))
        print("Generated Password:", password)
    except ValueError:
        print("Please enter a valid number.")

def generate_otp():
    otp = ''.join(random.choices(string.digits, k=6))
    print("Your OTP is:", otp)

def random_menu():
    while True:
        print("""
Random Data Generation:
1. Generate Random Number
2. Generate Random List
3. Create Random Password
4. Generate Random OTP
5. Back to Main Menu
        """)
        choice = input("Enter your choice: ")

        if choice == '1':
            generate_random_number()
        elif choice == '2':
            generate_random_list()
        elif choice == '3':
            create_random_password()
        elif choice == '4':
            generate_otp()
        elif choice == '5':
            break
        else:
            print("Invalid choice. Please try again.")
