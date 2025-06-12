# random

import random
import string

def gen_num():
    try:
        start = int(input("Start number: "))
        end = int(input("End number: "))
        print(f"Random number: {random.randit(start, end)}")
    except:
        print("Enter numbers only ")

def gen_list():
    try:
        start = int(input("Start number: "))
        end = int(input("End number: "))
        length_list = int(input("List length: "))
        print(f"Random list: {[random.randit(start, end) for _ in range(length_list)]}")
    except:
        print("Enter numbers only")

def gen_password():
    try:
        length = int(input("Password length(min 4): "))
        if length < 4:
            print("Minimum length is 4")
            return
        
        chars = string.ascii_letters + string.digits+ string.punctuation
        password = random.sample(chars, length)
        print(f"Password: {''.join(password)}")
    except:
        print("Enter a valid number")

def gen_otp():
    try: 
        otp_lenth = int(input("OTP length: "))
        print(f"OTP: {''.join(random.choices(string.digits, k = otp_lenth))}")
    except:
        print("Enter a valid number")

def menu():
    while True:
        choice = input("""Choose: \n 
                       1. Random Number \n
                       2. Random List\n
                       3. Password\n
                       4. OTP\n
                       5. Back""")
                
        if choice == '1': gen_num()
        elif choice == '2': gen_list()
        elif choice == '3': gen_password()
        elif choice == '4': gen_otp()
        elif choice == '5': break
        else: print("Invalid choice")
