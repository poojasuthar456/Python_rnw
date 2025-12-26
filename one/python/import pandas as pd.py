import pandas as pd
import numpy as np

np.random.seed(42)
n = 200  # number of records

# --- core variables ---
ages = np.random.randint(18, 81, size=n)

bins = [18, 25, 35, 45, 60, 120]
labels = ["18-25", "26-35", "36-45", "46-60", "60+"]
age_groups = pd.cut(ages, bins=bins, labels=labels, right=True, include_lowest=True)

weights = np.random.normal(loc=70, scale=12, size=n).round(1)
genders = np.random.choice(["Male", "Female"], size=n)
regions = np.random.choice(["North", "South", "East", "West"], size=n)

smoking_status = np.random.choice(
    ["Smoker", "Non-Smoker", "Former Smoker"],
    size=n,
    p=[0.25, 0.6, 0.15]
)
exercise_frequency = np.random.choice(
    ["Daily", "Weekly", "Rarely", "Never"],
    size=n,
    p=[0.3, 0.4, 0.2, 0.1]
)

bmi = np.random.normal(loc=26, scale=4, size=n).round(1)
blood_pressure = np.random.normal(loc=125, scale=15, size=n).round(0)

# --- disease probabilities depending on BMI & BP ---
prob_diabetes = np.clip((bmi - 20) / 20, 0.05, 0.8)
diabetes = np.random.binomial(1, prob_diabetes)

prob_hyp = np.clip((blood_pressure - 110) / 40, 0.05, 0.9)
hypertension = np.random.binomial(1, prob_hyp)

cholesterol = np.random.normal(loc=190, scale=35, size=n).round(0)
glucose = np.random.normal(loc=95 + diabetes * 20, scale=15, size=n).round(0)

start_date = pd.to_datetime("2023-01-01")
visit_dates = start_date + pd.to_timedelta(np.random.randint(0, 365, size=n), unit="D")
visit_dates = visit_dates.strftime("%Y-%m-%d")

# --- final dataframe ---
df = pd.DataFrame({
    "record_id": [f"REC_{i:04d}" for i in range(1, n + 1)],
    "age_group": age_groups.astype(str),
    "age": ages,
    "weight": weights,
    "gender": genders,
    "region": regions,
    "smoking_status": smoking_status,
    "exercise_frequency": exercise_frequency,
    "bmi": bmi,
    "blood_pressure": blood_pressure,
    "diabetes": diabetes.astype(bool),
    "hypertension": hypertension.astype(bool),
    "cholesterol_level": cholesterol,
    "glucose_level": glucose,
    "visit_date": visit_dates,
})

# save to CSV
csv_filename = "health_dataset_derivable_judgement.csv"
df.to_csv(csv_filename, index=False)

csv_filename
