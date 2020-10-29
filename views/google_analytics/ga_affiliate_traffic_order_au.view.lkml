view: ga_affiliate_traffic_order_au {

  derived_table: {
    explore_source: ga_channel_au {
      column: date_raw {}
      column: sessions {}
      column: transactions {}
      filters: {
        field: ga_channel_au.channel_grouping
        value: "Affiliates"
      }
    }
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, year]
    datatype: date
    sql: ${TABLE}.date_raw ;;
  }
  # dimension: sessions {}
  # dimension: transactions {}
  measure: session_count {
    type: sum
    sql: ${TABLE}.sessions ;;
    drill_fields: [ga_affiliate_traffic_order_au.date_raw,ga_affiliate_traffic_order_au.sessions]
  }
  measure: order_count {
    type: sum
    sql: ${TABLE}.transactions ;;
    drill_fields: [ga_affiliate_traffic_order_au.date_raw,ga_affiliate_traffic_order_au.transactions]
  }
}
