view: affiliate_performance_measures {
  measure: conversion_rate {
    type:  number
    value_format_name: "percent_2"
    sql: ${affiliate_daily_performance_us.orders} / NULLIF(${affiliate_daily_performance_us.clicks},0);;
    drill_fields: []
  }
  measure: net_items_per_order {
    type:  number
    value_format_name: "decimal_1"
    sql: ${affiliate_daily_performance_us.net_items} / NULLIF(${affiliate_daily_performance_us.orders},0);;
    drill_fields: []
  }
  measure: average_order_value {
    type:  number
    value_format_name: "decimal_2"
    sql: ${affiliate_daily_performance_us.sales} / NULLIF(${affiliate_daily_performance_us.orders},0);;
    drill_fields: []
  }
}
