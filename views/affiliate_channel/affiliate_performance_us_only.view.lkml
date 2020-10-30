# If necessary, uncomment the line below to include explore_source.

# include: "us.model.lkml"

view: affiliate_performance_us_only {
  derived_table: {
    explore_source: affiliate_performance_us_au_2 {
      column: market {}
      column: click_count {}
      column: commission {}
      column: fee_and_com_total {}
      column: order_count {}
      column: placement_fee {}
      column: revenue {}
      column: unit_sold {}
      column: sessions { field: ga_affiliate_traffic_order_us.sessions }
      column: transactions { field: ga_affiliate_traffic_order_us.transactions }
      column: transaction_date {}
      filters: {
        field: affiliate_performance_us_au_2.market
        value: "us"
      }
    }
  }
  dimension: market {}
  dimension_group: tran_day_dynamic {
    hidden: yes
    type: time
    timeframes: [date, week, month, year]
    datatype: date
    sql: ${TABLE}.transaction_date ;;
  }
  dimension: transaction_date {
    type: date
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
        WHEN {% parameter timeframe_picker %} = 'Date' THEN CAST(${tran_day_dynamic_date} AS STRING)
        WHEN {% parameter timeframe_picker %} = 'Week' THEN CAST(${tran_day_dynamic_week} AS STRING)
        WHEN{% parameter timeframe_picker %} = 'Month' THEN CAST(${tran_day_dynamic_month} AS STRING)
        END ;;
  }
  measure: ga_session_fin {
    label: "GA Traffic"
    type: sum
    value_format: "0"
    sql: ${TABLE}.sessions ;;
    drill_fields: [market,transaction_date]
  }
  measure: ga_order_fin {
    label: "GA Orders"
    type: sum
    value_format: "0"
    sql: ${TABLE}.transactions ;;
    drill_fields: [market,transaction_date]
  }
  measure: commission_fin {
    label: "Commision Total"
    type: sum
    value_format: "#,##0.00"
    sql: ${TABLE}.commission ;;
    drill_fields: [market,transaction_date]
  }
  measure: order_count_fin {
    label: "Orders"
    type: sum
    value_format: "0"
    sql: ${TABLE}.order_count ;;
    drill_fields: [market,transaction_date]
  }
  measure: revenue_fin {
    label: "Revenue"
    type: sum
    value_format: "#,##0.00"
    sql: ${TABLE}.revenue ;;
    drill_fields: [market,transaction_date]
  }
  measure: click_count_fin {
    label: "Clicks"
    type: sum
    sql: ${TABLE}.click_count ;;
  }
  measure: unit_sold_fin {
    label: "Total Units Sold"
    type: sum
    sql: ${TABLE}.unit_sold ;;
    drill_fields: [market,transaction_date]
  }
  measure: placement_fee_fin {
    label: "Placement Fee"
    value_format: "#,##0.00"
    type: sum
    sql: ${TABLE}.placement_fee ;;
    drill_fields: [market,transaction_date]
  }
  measure: fee_and_com_total_fin {
    label: "Com & Placement Fee"
    value_format: "#,##0.00"
    type: sum
    sql: ${TABLE}.fee_and_com_total ;;
    drill_fields: [market,transaction_date,placement_fee_fin,commission_fin]
  }

}