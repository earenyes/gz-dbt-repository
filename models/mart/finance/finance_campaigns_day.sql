
SELECT
    campaigns.*,
    finance.*,
    (finance.operational_margin - campaigns.ads_costs) AS ads_margin
FROM 
    {{ ref('int_campaigns_day') }} AS campaigns
JOIN 
    {{ ref('finance_days') }} AS finance
USING (date_date) 