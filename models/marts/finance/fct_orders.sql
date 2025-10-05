
SELECT 
ord.order_id as order_id,
ord.customer_id as customer_id,
pay.amount as amount
FROM
{{ ref('stg_orders')}} ord
INNER JOIN {{ ref('stg_stripe__payments' )}} pay
ON ord.order_id = pay.order_id