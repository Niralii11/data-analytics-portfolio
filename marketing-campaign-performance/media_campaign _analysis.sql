#Which platform performs best?
SELECT 
    platform,
    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,
    SUM(conversions) AS total_conversions,
    ROUND(SUM(clicks) * 1.0 / SUM(impressions), 4) AS ctr
FROM campaign_performance
GROUP BY platform
ORDER BY total_conversions DESC;

#How does performance change month by month?
SELECT 
    month,
    SUM(spend) AS total_spend,
    SUM(conversions) AS total_conversions
FROM campaign_performance
GROUP BY month
ORDER BY month;

#Which campaigns drive results?
SELECT 
    campaign_name,
    SUM(conversions) AS total_conversions
FROM campaign_performance
GROUP BY campaign_name
ORDER BY total_conversions DESC
LIMIT 5;

#Regional Performance
SELECT 
    region,
    SUM(spend) AS total_spend,
    SUM(conversions) AS total_conversions
FROM campaign_performance
GROUP BY region;


