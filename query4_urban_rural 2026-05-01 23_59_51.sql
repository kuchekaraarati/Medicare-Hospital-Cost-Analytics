SELECT
  Rndrng_Prvdr_RUCA_Desc,
  COUNT(DISTINCT Rndrng_Prvdr_CCN) AS Hospital_Count,
  ROUND(SUM(Tot_Dschrgs), 0) AS Total_Patients,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg), 2) AS Avg_Billed,
  ROUND(AVG(Avg_Tot_Pymt_Amt), 2) AS Avg_Paid,
  ROUND(AVG(Avg_Mdcr_Pymt_Amt), 2) AS Avg_Medicare_Paid,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg) / AVG(Avg_Tot_Pymt_Amt), 2) AS Charge_Ratio,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg) - AVG(Avg_Tot_Pymt_Amt), 2) AS Avg_Gap
FROM
  `hospital-cost-analytics.cms_hospital_data.inpatient_charges`
WHERE
  Rndrng_Prvdr_RUCA_Desc != 'Unclassified'
GROUP BY
  Rndrng_Prvdr_RUCA_Desc
ORDER BY
  Avg_Billed DESC