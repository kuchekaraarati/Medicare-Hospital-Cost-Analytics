# Medicare-Hospital-Cost-Analytics
Analyzing 145,879 Medicare inpatient records to identify billing inefficiencies across 2,906 US hospitals using BigQuery SQL and Looker Studio(Data Studio)

# 🏥 US Medicare Hospital Cost Efficiency Analysis

## Project Overview
End-to-end data analytics project analyzing 145,879 Medicare 
inpatient records across 2,906 US hospitals to identify billing 
inefficiencies, procedure overcharging, and urban-rural cost 
disparities.

## 🔍 Key Findings
- Highest hospital billing ratio: **20.9x** (Capital Health, NJ)
- Average billing gap per patient: **$77,215**
- Most overcharged procedure: Skin & Breast Surgery at **15.55x**
- Rural hospitals more efficient at **3.91x** vs Urban **5.1x**
- Mayo Clinic identified as gold standard at **2.63x** ratio
- Total Medicare billing gap across 4.9M patients analyzed

## 🛠️ Tools & Technologies
- **Google BigQuery** — Data warehouse & SQL analysis
- **SQL** — 5 complex analytical queries
- **Excel** — Data profiling & cleaning
- **Looker Studio** — Interactive dashboard
- **GitHub** — Version control

## 📊 Dataset
- **Source:** CMS Medicare Inpatient Hospitals 2024
- **Size:** 145,879 rows × 12 columns
- **Hospitals:** 2,906 US hospitals
- **Patients:** 4,952,481 Medicare discharges

## 🔎 Analysis Performed

### Problem 1 — Hospital Cost Variation
Identified top 20 hospitals with highest charge-to-payment 
ratios nationwide.

### Problem 2 — Procedure Overcharging
Analyzed 500+ DRG procedure codes to find most inflated 
billing categories.

### Problem 3 — Hospital Efficiency Classification
Classified 2,906 hospitals into efficiency tiers using 
CASE-based SQL logic.

### Problem 4 — Urban vs Rural Disparity
Compared billing patterns across 14 RUCA location 
classifications.

### Problem 5 — Volume vs Cost Relationship
Analyzed whether high patient volume correlates with 
lower billing ratios.

## 📁 Repository Structure
