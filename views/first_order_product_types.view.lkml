view: first_order_product_types {
  derived_table: {
    sql: SELECT
        string_agg(distinct product.product_type order by product_type)  AS product_types,
        customer.id  AS customer_id
      FROM `@{schema}.order_line`
           AS order_line
      LEFT JOIN `@{schema}.order`
           AS `order` ON (`order`.id)=order_line.order_id
      LEFT JOIN `@{schema}.product`
           AS product ON order_line.product_id=product.id
      LEFT JOIN `@{schema}.customer`
           AS customer ON customer.id = (`order`.customer_id)

      WHERE ((product.product_type IS NOT NULL) AND product.product_type not in ('','Hidden') )
      AND ((TIMESTAMP(FORMAT_TIMESTAMP('%F %H:%M:%E*S', TIMESTAMP_TRUNC(CAST(TIMESTAMP(FORMAT_TIMESTAMP('%F %H:%M:%E*S', customer.created_at , 'America/Los_Angeles')) AS TIMESTAMP), DAY)), 'America/Los_Angeles')) = (TIMESTAMP(FORMAT_TIMESTAMP('%F %H:%M:%E*S', TIMESTAMP_TRUNC(CAST(TIMESTAMP(FORMAT_TIMESTAMP('%F %H:%M:%E*S', `order`.created_at , 'America/Los_Angeles')) AS TIMESTAMP), DAY)), 'America/Los_Angeles')))
      group by 2
       ;;
      datagroup_trigger: daily_datagroup
  }


  dimension: customer_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: product_types {
    label: "First Order Product Types"
    type: string
    sql: ${TABLE}.product_types ;;
  }

}