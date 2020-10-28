view: affiliate_publisher_measures {
  measure: conversion_rate {
    type:  number
    value_format_name: "percent_2"
    sql: ${affiliate_publisher_performance.orders} / NULLIF(${affiliate_publisher_performance.clicks},0);;
    drill_fields: []
  }
  measure: net_items_per_order {
    type:  number
    value_format_name: "decimal_1"
    sql: ${affiliate_publisher_performance.net_items} / NULLIF(${affiliate_publisher_performance.orders},0);;
    drill_fields: []
  }
  measure: average_order_value {
    type:  number
    value_format_name: "decimal_2"
    sql: ${affiliate_publisher_performance.sales} / NULLIF(${affiliate_publisher_performance.orders},0);;
    drill_fields: []
  }
}
