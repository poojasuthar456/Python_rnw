import csv
import random
from datetime import date

random.seed(42)  # reproducible

PRODUCTS = [
    ("Laptop 13\"", "Electronics"),
    ("Laptop 15\"", "Electronics"),
    ("Wireless Mouse", "Accessories"),
    ("Mechanical Keyboard", "Accessories"),
    ("27\" Monitor", "Electronics"),
    ("USB-C Hub", "Accessories"),
    ("Noise-Canceling Headphones", "Audio"),
    ("Bluetooth Speaker", "Audio"),
    ("Smartphone 128GB", "Electronics"),
    ("Smartwatch", "Wearables"),
    ("Office Chair", "Furniture"),
    ("Standing Desk", "Furniture"),
    ("Webcam HD", "Accessories"),
    ("External SSD 1TB", "Storage"),
    ("Printer", "Office"),
]

PAYMENT_METHODS = ["Credit Card", "Debit Card", "UPI", "Net Banking", "Cash on Delivery", "Wallet"]

# City-country pairs and mapped regions
CITY_COUNTRY = [
    ("Mumbai", "India"), ("Delhi", "India"), ("Bengaluru", "India"), ("Chennai", "India"),
    ("Hyderabad", "India"), ("Pune", "India"), ("Kolkata", "India"),
    ("New York", "USA"), ("San Francisco", "USA"),
    ("London", "UK"), ("Manchester", "UK"),
    ("Berlin", "Germany"), ("Munich", "Germany"),
    ("Sydney", "Australia"), ("Melbourne", "Australia"),
    ("Toronto", "Canada"), ("Vancouver", "Canada"),
    ("Singapore", "Singapore"), ("Dubai", "UAE")
]

COUNTRY_REGION = {
    "India": "APAC",
    "USA": "North America",
    "Canada": "North America",
    "UK": "EMEA",
    "Germany": "EMEA",
    "Australia": "APAC",
    "Singapore": "APAC",
    "UAE": "EMEA",
}

# Sales reps by region
REGION_SALESREPS = {
    "APAC": ["Asha Verma", "Rohit Iyer", "Mei Lin", "Arun Kumar"],
    "North America": ["Chris Johnson", "Emily Davis", "Michael Brown", "Sarah Miller"],
    "EMEA": ["James Wilson", "Sofia Rossi", "Liam Schmidt", "Olivia Martin"],
}

UNIT_PRICE_RANGES = {
    "Electronics": (150.0, 2000.0),
    "Accessories": (10.0, 150.0),
    "Audio": (30.0, 400.0),
    "Wearables": (80.0, 600.0),
    "Furniture": (120.0, 1000.0),
    "Storage": (60.0, 300.0),
    "Office": (80.0, 500.0),
}

GST_RATE = 0.18  # 18%

def random_date_in_month(year: int, month: int) -> date:
    if month in (1, 3, 5, 7, 8, 10, 12):
        days = 31
    elif month in (4, 6, 9, 11):
        days = 30
    else:
        is_leap = (year % 4 == 0 and (year % 100 != 0 or year % 400 == 0))
        days = 29 if is_leap else 28
    day = random.randint(1, days)
    return date(year, month, day)

def random_unit_price(category: str) -> float:
    lo, hi = UNIT_PRICE_RANGES.get(category, (20.0, 200.0))
    return round(random.uniform(lo, hi), 2)

def pick_region(country: str) -> str:
    return COUNTRY_REGION.get(country, "Other")

def pick_sales_rep(region: str) -> str:
    reps = REGION_SALESREPS.get(region, ["Alex Taylor"])
    return random.choice(reps)

def generate_rows(month: int, year: int, n: int):
    rows = []
    for i in range(1, n + 1):
        sale_id = f"{year}{month:02d}-{i:05d}"
        d = random_date_in_month(year, month)
        customer_id = f"CUST-{random.randint(1000, 9999)}"
        product, category = random.choice(PRODUCTS)
        qty = random.randint(1, 5)
        unit_price = random_unit_price(category)
        discount = round(random.choice([0.0, 0.05, 0.10, 0.15]) if random.random() < 0.6 else 0.0, 2)
        gross = qty * unit_price
        total = round(gross * (1 - discount), 2)  # pre-tax total

        pay_method = random.choice(PAYMENT_METHODS)
        city, country = random.choice(CITY_COUNTRY)
        region = pick_region(country)
        sales_rep = pick_sales_rep(region)

        gst_amount = round(total * GST_RATE, 2)
        total_with_gst = round(total + gst_amount, 2)

        rows.append({
            "SaleID": sale_id,
            "Date": d.isoformat(),
            "CustomerID": customer_id,
            "Product": product,
            "Category": category,
            "Quantity": qty,
            "UnitPrice": f"{unit_price:.2f}",
            "Discount": f"{discount:.2f}",
            "TotalAmount": f"{total:.2f}",          # before GST
            "GST(18%)": f"{gst_amount:.2f}",
            "TotalWithGST": f"{total_with_gst:.2f}",
            "PaymentMethod": pay_method,
            "City": city,
            "Country": country,
            "Region": region,
            "SalesRep": sales_rep,
        })
    return rows

def write_csv(filename: str, rows):
    fieldnames = [
        "SaleID", "Date", "CustomerID", "Product", "Category",
        "Quantity", "UnitPrice", "Discount",
        "TotalAmount", "GST(18%)", "TotalWithGST",
        "PaymentMethod", "City", "Country",
        "Region", "SalesRep"
    ]
    with open(filename, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)

def main():
    year = 2025
    files = [
        ("sales_jan.csv", 1),
        ("sales_feb.csv", 2),
        ("sales_mar.csv", 3),
    ]
    for fname, month in files:
        data = generate_rows(month, year, 500)
        write_csv(fname, data)
    print("Generated: sales_jan.csv, sales_feb.csv, sales_mar.csv with Region, SalesRep, GST")

if __name__ == "__main__":
    main()
