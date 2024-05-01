-- Join the int_campaigns_day model with finance_daysmodel from the previous lecture.



SELECT
    campaigns.*,
    finance.*,
    (finance.operational_margin - campaigns.ads_costs) AS ads_margin
FROM 
    {{ ref('int_campaigns_day') }} AS campaigns
JOIN 
    {{ ref('finance_days') }} AS finance
USING (date_date) 