

SELECT
    date_date
    ,COUNT(orders_id) AS Total_number_of_transactions
    ,ROUND(SUM(revenue),0) AS Total_revenue
    ,ROUND(AVG(revenue),1) AS Avereage_Basket
    ,ROUND(SUM(revenue)/COUNT(orders_id),1) AS average_basket_bis
    ,ROUND(SUM(margin),0) AS margin
    ,ROUND(SUM(operational_margin),0) AS operational_margin
    ,ROUND(SUM(purchase_cost),0) AS Total_purchase_cost
    ,ROUND(SUM(ship_cost),0) AS Total_shipping_fees
    ,ROUND(SUM(logcost),0) AS Total_logcosts
    ,ROUND(SUM(ship_cost),0) AS ship_cost
    ,SUM(quantity) AS Total_quantity_of_products_sold
FROM {{ref("int_orders_operational")}}
GROUP BY  date_date
ORDER BY  date_date DESC
