# toolkit/uuid.py
import uuid

def generate_uuid1():
    print("UUID1 (based on time and host ID):", uuid.uuid1())

def generate_uuid4():
    print("UUID4 (random):", uuid.uuid4())

def uuid_menu():
    while True:
        print("""
Generate Unique Identifiers:
1. Generate UUID1 (Timestamp-based)
2. Generate UUID4 (Random-based)
3. Back to Main Menu
        """)
        choice = input("Enter your choice: ")

        if choice == '1':
            generate_uuid1()
        elif choice == '2':
            generate_uuid4()
        elif choice == '3':
            break
        else:
            print("Invalid choice. Please try again.")
