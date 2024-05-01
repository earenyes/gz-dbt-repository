SELECT
    DATE_TRUNC(date_date, MONTH) AS month,
    SUM(ads_costs) AS total_ads_costs,
    SUM(ad_margin) AS ads_margin,
    SUM(operational_margin) AS operational_margin,
    SUM(average_basket) AS average_basket
FROM 
    {{ ref('finance_campaigns_day') }}