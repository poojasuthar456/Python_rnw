# uuid.py
# UUID Generator Utility Module

import uuid

# --- UUID Generation Functions ---

def gen_time_based_uuid():
    """Generate a time-based UUID (version 1)."""
    return uuid.uuid1()

def gen_random_uuid():
    """Generate a random UUID (version 4)."""
    return uuid.uuid4()

# --- Menu Function ---

def uuid_menu():
    """Display menu to generate UUIDs."""
    while True:
        print("\n--- UUID Generator Menu ---")
        print("1. Generate Time-Based UUID ")
        print("2. Generate Random UUID ")
        print("3. Return to Main Menu")

        choice = input("Enter your choice (1-3): ").strip()

        if choice == "1":
            print("\nGenerated Time-Based UUID:", gen_time_based_uuid())
        elif choice == "2":
            print("\nGenerated Random UUID:", gen_random_uuid())
        elif choice == "3":
            print("Returning to main menu...")
            break
        else:
            print("Invalid choice. Please enter 1, 2, or 3.")

