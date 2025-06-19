# toolkit/math.py
import math

def calculate_factorial():
    try:
        num = int(input("Enter a non-negative integer: "))
        if num < 0:
            print("Factorial is not defined for negative numbers.")
        else:
            print(f"Factorial of {num} is {math.factorial(num)}")
    except ValueError:
        print("Invalid input. Please enter an integer.")

def solve_compound_interest():
    try:
        principal = float(input("Enter the principal amount: "))
        rate = float(input("Enter the annual interest rate (in %): "))
        time = float(input("Enter time in years: "))
        amount = principal * (1 + rate / 100) ** time
        print(f"Compound Interest = {amount - principal:.2f}")
        print(f"Total Amount = {amount:.2f}")
    except ValueError:
        print("Invalid input. Please enter valid numbers.")

def trigonometric_calculation():
    try:
        angle = float(input("Enter angle in degrees: "))
        radians = math.radians(angle)
        print(f"sin({angle}) = {math.sin(radians):.4f}")
        print(f"cos({angle}) = {math.cos(radians):.4f}")
        print(f"tan({angle}) = {math.tan(radians):.4f}")
    except ValueError:
        print("Invalid input. Please enter a valid angle.")

def area_of_geometric_shapes():
    print("""
Choose a shape:
1. Circle
2. Rectangle
3. Triangle
    """)
    choice = input("Enter your choice: ")

    try:
        if choice == '1':
            radius = float(input("Enter radius: "))
            print(f"Area of Circle = {math.pi * radius * radius:.2f}")
        elif choice == '2':
            length = float(input("Enter length: "))
            width = float(input("Enter width: "))
            print(f"Area of Rectangle = {length * width:.2f}")
        elif choice == '3':
            base = float(input("Enter base: "))
            height = float(input("Enter height: "))
            print(f"Area of Triangle = {0.5 * base * height:.2f}")
        else:
            print("Invalid choice.")
    except ValueError:
        print("Invalid input. Please enter valid numbers.")

def math_menu():
    while True:
        print("""
Mathematical Operations:
1. CalculateFactorial
2. SolveCompoundInterest
3. TrigonometricCalculation
4. AreaOfGeometricShapes
5. BakeToMenu
        """)
        choice = input("Enter your choice: ")

        if choice == '1':
            calculate_factorial()
        elif choice == '2':
            solve_compound_interest()
        elif choice == '3':
            trigonometric_calculation()
        elif choice == '4':
            area_of_geometric_shapes()
        elif choice == '5':
            break
        else:
            print("Invalid choice. Please try again.")
