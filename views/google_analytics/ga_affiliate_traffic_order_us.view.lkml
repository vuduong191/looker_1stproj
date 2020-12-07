view: ga_affiliate_traffic_order_us {
  derived_table: {
    explore_source: ga_channel_us {
      column: date_date {}
      column: sessions {}
      column: transactions {}
      filters: {
        field: ga_channel_us.channel_grouping
        value: "Affiliates"
      }
    }
  }
  dimension: pk {
    type: date
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.date_date ;;
  }
  dimension_group: date {
    type: time
    timeframes: [date, week, month, year]
    datatype: date
    sql: ${TABLE}.date_date ;;
  }
  # measure: session_count {
  #   type: sum
  #   sql: sessions ;;
  #   drill_fields: [ga_affiliate_traffic_order_us.date_date,ga_affiliate_traffic_order_us.sessions]
  # }
  # measure: order_count {
  #   type: sum
  #   sql: transactions;;
  #   drill_fields: [ga_affiliate_traffic_order_us.date_date,ga_affiliate_traffic_order_us.transactions]
  # }
  # vs
  dimension: sessions {}
  dimension: transactions {}
  measure: session_count {
    type: sum
    sql: ${TABLE}.sessions ;;
    drill_fields: [ga_affiliate_traffic_order_us.date_date,ga_affiliate_traffic_order_us.sessions]
  }
  measure: order_count {
    type: sum
    sql:  ${TABLE}.transactions;;
    drill_fields: [ga_affiliate_traffic_order_us.date_date,ga_affiliate_traffic_order_us.transactions]
  }
}
