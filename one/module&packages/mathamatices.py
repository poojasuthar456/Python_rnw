"""
math.py

Mathematical utilities including factorial, compound interest,
trigonometric values, and area calculations.
"""

import math

# --- Mathematical Operations ---

def factorial():
    """Calculate the factorial of a number."""
    try:
        num = int(input("Enter a number to find its factorial: "))
        if num < 0:
            print("Factorial is not defined for negative numbers.")
        else:
            result = math.factorial(num)
            print(f"Factorial of {num} is {result}")
    except ValueError:
        print("Please enter a valid integer.")


def interest():
    """Calculate compound interest."""
    try:
        p = float(input("Enter principal amount: "))
        r = float(input("Enter interest rate (%): "))
        t = float(input("Enter time in years: "))
        n = int(input("Enter number of times interest is compounded per year: "))

        amount = p * (1 + r / (100 * n)) ** (n * t)
        i = round(amount - p, 2)

        print(f"Compound interest: ₹{i}")
        print(f"Total Amount: ₹{round(amount, 2)}")
    except ValueError:
        print("Please enter valid numbers.")


def trigno():
    """Calculate trigonometric values from an angle in degrees."""
    try:
        angle = float(input("Enter angle in degrees: "))
        radians = math.radians(angle)

        sin_val = math.sin(radians)
        cos_val = math.cos(radians)
        tan_val = math.tan(radians)

        print("sin =", round(sin_val, 4))
        print("cos =", round(cos_val, 4))
        print("tan =", round(tan_val, 4))

        print("cosec =", round(1 / sin_val, 4) if sin_val != 0 else "undefined")
        print("sec =", round(1 / cos_val, 4) if cos_val != 0 else "undefined")
        print("cot =", round(1 / tan_val, 4) if tan_val != 0 else "undefined")
    except ValueError:
        print("Invalid input. Please enter a valid angle.")


def find_area():
    """Calculate the area of different shapes."""
    try:
        print("\nSelect shape:")
        print("1. Circle")
        print("2. Triangle")
        print("3. Rectangle")
        print("4. Square")

        choice = input("Enter your choice: ")

        if choice == '1':
            r = float(input("Enter radius: "))
            area = math.pi * r ** 2
            print("Area of Circle is", round(area, 2))

        elif choice == '2':
            b = float(input("Enter base: "))
            h = float(input("Enter height: "))
            area = 0.5 * b * h
            print("Area of Triangle is", round(area, 2))

        elif choice == '3':
            l = float(input("Enter length: "))
            w = float(input("Enter width: "))
            area = l * w
            print("Area of Rectangle is", round(area, 2))

        elif choice == '4':
            s = float(input("Enter side: "))
            area = s ** 2
            print("Area of Square is", round(area, 2))

        else:
            print("Invalid shape choice.")

    except ValueError:
        print("Invalid input. Please enter numbers only.")


# --- Main Menu ---

def math_data():
    """Display the math utility menu."""
    while True:
        print("\n--- Math Operations Menu ---")
        print("1. Factorial")
        print("2. Compound Interest")
        print("3. Trigonometry")
        print("4. Area Calculator")
        print("5. Back to Main Menu")

        choice = input("Enter your choice: ")

        if choice == '1':
            factorial()
        elif choice == '2':
            interest()
        elif choice == '3':
            trigno()
        elif choice == '4':
            find_area()
        elif choice == '5':
            print("Returning to main menu...")
            break
        else:
            print("Invalid option. Try again.")

