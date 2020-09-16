view: order_customer_dimensions {
  dimension_group: since_created {
    type: duration
    intervals: [day,month,quarter]
    sql_start: ${customer.created_raw} ;;
    sql_end: ${order.created_raw} ;;
  }

  }
