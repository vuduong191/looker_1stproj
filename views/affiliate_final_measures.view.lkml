view: affiliate_final_measures {
  measure: cac {
    type:  number
    value_format_name: "decimal_2"
    sql: ${affiliate_pub_placement_vs_non_2.fee_and_com_total } / NULLIF(${affiliate_pub_placement_vs_non_2.order_count },0);;
    drill_fields: []
  }
  measure: conversion_rate {
    type:  number
    value_format_name: "decimal_1"
    sql: ${affiliate_pub_placement_vs_non_2.order_count} / NULLIF(${affiliate_pub_placement_vs_non_2.click_count },0);;
    drill_fields: []
  }
}
