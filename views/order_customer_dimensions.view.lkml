view: order_customer_dimensions {
  dimension_group: since_created {
    description: "The time between when a user first ordered and the current order."
    type: duration
    intervals: [day,month,quarter]
    sql_start: ${customer.created_raw} ;;
    sql_end: ${order.created_raw} ;;
  }

  }
