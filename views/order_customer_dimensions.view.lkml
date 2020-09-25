view: order_customer_dimensions {
  dimension: days_since_created {
    description: "The time between when a user first ordered and the current order."
    type: duration_day
    sql_start: ${customer.created_raw} ;;
    sql_end: ${customer_first_order.first_order_raw} ;;
  }

  dimension: months_since_first_order {
    type:  number
    sql: floor(${days_since_created}/30);;
    drill_fields: [order.id, order.name]
  }

  measure: month_0_spend {
    label: "Month 0 Spend"
    type: sum_distinct
    value_format_name: usd
    sql_distinct_key: ${order.id} ;;
    sql: ${order.total_price} ;;
    filters: [months_since_first_order: "0"]
  }

  measure: month_1_plus_spend {
    label: "Month 1+ Spend"
    type: sum_distinct
    value_format_name: usd
    sql_distinct_key: ${order.id} ;;
    sql: ${order.total_price} ;;
    filters: [months_since_first_order: ">0"]
  }


  }
