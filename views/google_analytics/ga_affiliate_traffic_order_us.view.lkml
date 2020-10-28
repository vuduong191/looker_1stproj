view: ga_affiliate_traffic_order_us {
  derived_table: {
    explore_source: ga_channel_us {
      column: date_raw {}
      column: sessions {}
      column: transactions {}
      filters: {
        field: ga_channel_us.channel_grouping
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
  dimension: sessions {}
  dimension: transactions {}
  measure: session_count {
    type: sum
    sql: ${TABLE}.sessions ;;
    drill_fields: [ga_affiliate_traffic_order_us.date_raw,ga_affiliate_traffic_order_us.sessions]
  }
  measure: order_count {
    type: sum
    sql: ${TABLE}.transactions ;;
    drill_fields: [ga_affiliate_traffic_order_us.date_raw,ga_affiliate_traffic_order_us.transactions]
  }
}
