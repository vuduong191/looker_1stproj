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

  dimension: pk {
    primary_key: yes
    type: date
    sql: ${date_date} ;;
    hidden: yes
  }

  dimension_group: date {
    type: time
    timeframes: [date, week, month, year, raw]
    datatype: date
    sql: ${TABLE}.date_raw ;;
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
    # affiliate_performance_us_au_test.pub_id,

    drill_fields: [
      affiliate_performance_us_au_test.pub_id,
      ga_affiliate_traffic_order_us.date_date,
      ga_affiliate_traffic_order_us.sessions
      ]
  }
  measure: order_count {
    type: sum
    sql:  ${TABLE}.transactions;;
    drill_fields: [ga_affiliate_traffic_order_us.date_date,ga_affiliate_traffic_order_us.transactions,
      affiliate_performance_us_au_test.pub_id]
  }
}
