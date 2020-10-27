view: ga_us_channel_measures {
  measure: bounce_rate {
    type:  number
    value_format_name: "percent_2"
    sql: ${ga_channel_us.bounces} / NULLIF(${ga_channel_us.sessions},0);;
    drill_fields: []
  }
  measure: conversion_rate {
    type:  number
    value_format_name: "percent_2"
    sql:${ga_channel_us.transactions} / NULLIF(${ga_channel_us.sessions},0);;
    drill_fields: []
  }
  measure: aov {
    type:  number
    value_format_name: "decimal_0"
    sql: ${ga_channel_us.revenue} / NULLIF(${ga_channel_us.transactions},0);;
    drill_fields: []
  }
  measure: average_session_duration {
    type:  number
    value_format: "[hh]:mm:ss"
    sql: ${ga_channel_us.session_duration}/ 86400.0 / NULLIF(${ga_channel_us.sessions},0);;
    drill_fields: []
  }
}
