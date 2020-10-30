# If necessary, uncomment the line below to include explore_source.

# include: "us.model.lkml"

view: affiliate_pub_placement_vs_non_us {
  derived_table: {
    explore_source: affiliate_pub_placement_vs_non_2 {
      column: transaction_raw {}
      column: sessions { field: ga_affiliate_traffic_order_us.sessions }
      column: transactions { field: ga_affiliate_traffic_order_us.transactions }
      column: commission {}
      column: click_count {}
      column: fee_and_com_total {}
      # column: pub_name {}
      column: order_count {}
      column: placement_fee {}
      column: revenue {}
      filters: {
        field: affiliate_pub_placement_vs_non_2.market
        value: "us"
      }
    }
  }
  # dimension: pub_name {
  #   hidden: yes
  # }
  dimension_group: transaction {
    type: time
    timeframes: [date, week, month, year]
    datatype: date
    sql: ${TABLE}.transaction_raw ;;
  }
  parameter: timeframe_picker {
    label: "Date Granularity"
    type: string
    allowed_value: { value: "Date" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    default_value: "Date"
  }
  dimension: dynamic_timeframe {
    type: string
    sql:
        CASE
        WHEN {% parameter timeframe_picker %} = 'Date' THEN CAST(${transaction_date} AS STRING)
        WHEN {% parameter timeframe_picker %} = 'Week' THEN CAST(${transaction_week} AS STRING)
        WHEN{% parameter timeframe_picker %} = 'Month' THEN CAST(${transaction_month} AS STRING)
        END ;;
  }
  dimension: commission {}
  dimension: order_count {}
  measure: commission_total {
    type: sum
    value_format: "#,##0.00"
    sql: ${commission} ;;
  }
  measure: order_count_total {
    type: sum
    value_format: "0"
    sql: ${order_count} ;;
  }
  dimension: click_count {}
  measure: click_count_total {
    type: sum
    value_format: "0"
    sql: ${click_count} ;;
  }
  measure: ga_session_count {
    label: "GA Data Sessions"
    type: sum
    value_format: "0"
    sql: ${TABLE}.sessions ;;
  }
  measure: ga_order_count {
    label: "GA Order"
    type: sum
    value_format: "0"
    sql: ${TABLE}.transactions ;;
  }
  dimension: revenue {}
  measure: revenue_total {
    type: sum
    value_format: "#,##0.00"
    sql: ${revenue} ;;
  }
  dimension: placement_fee {}
  measure: placement_fee_total {
    value_format: "#,##0.00"
    type: sum
    sql: ${placement_fee} ;;
  }
  dimension: fee_and_com_total {}
  measure: fee_and_com_total_total {
    value_format: "#,##0.00"
    type: sum
    sql: ${fee_and_com_total} ;;
    drill_fields: [placement_fee_total, commission_total, transaction_date,transaction_date,revenue_total,order_count_total]
  }

}