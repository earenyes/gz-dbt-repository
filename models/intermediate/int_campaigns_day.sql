
SELECT 
    date_date,
    SUM(ads_cost) as ads_costs,
    SUM(impression) as ads_impressions,
    SUM(click) as ads_clicks
FROM {{ref('int_campaigns')}}
GROUP BY date_date

