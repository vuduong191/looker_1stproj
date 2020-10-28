view: affiliate_final_measures {
  measure: cac {
    type:  number
    value_format_name: "decimal_2"
    sql: ${affiliate_pub_placement_vs_non_us.fee_and_com_total_total} / NULLIF(${affiliate_pub_placement_vs_non_us.order_count_total}, 0);;
    drill_fields: []
  }
  measure: conversion_rate {
    type:  number
    value_format_name: "percent_2"
    sql: ${affiliate_pub_placement_vs_non_us.order_count_total} / NULLIF(${affiliate_pub_placement_vs_non_us.click_count_total} ,0);;
    drill_fields: []
  }
  measure: ga_cac {
    type:  number
    value_format_name: "decimal_1"
    sql: ${affiliate_pub_placement_vs_non_us.fee_and_com_total_total} / NULLIF(${affiliate_pub_placement_vs_non_us.ga_order_count} ,0);;
    drill_fields: []
  }
}
