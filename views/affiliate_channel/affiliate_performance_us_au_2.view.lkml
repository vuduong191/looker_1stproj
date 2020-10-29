# If necessary, uncomment the line below to include explore_source.

# include: "test_vu.model.lkml"

view: affiliate_performance_us_au_2 {
  derived_table: {
    explore_source: affiliate_performance_us_au {
      column: clicks_draft {}
      column: market {}
      column: net_items_draft {}
      column: orders_draft {}
      column: sales_draft {}
      column: total_commission_draft {}
      column: transaction_date {}
      column: placement_amount { field: placement_payment.placement_amount }
      derived_column: placement_fee_and_com {
        sql:  ifnull(placement_amount, 0 ) + ifnull(total_commission_draft, 0 )  ;;
      }
    }
  }
  dimension: market {}

  dimension_group: transaction {
    type: time
    timeframes: [raw, date, week, month, year]
    datatype: date
    sql: ${TABLE}.transaction_date ;;
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
  measure: commission {
    type: sum
    value_format: "#,##0.00"
    sql: ${TABLE}.total_commission_draft ;;
    drill_fields: [market,transaction_date]
  }
  measure: order_count {
    type: sum
    value_format: "0"
    sql: ${TABLE}.orders_draft ;;
    drill_fields: [market,transaction_date]
  }
  measure: revenue {
    type: sum
    value_format: "#,##0.00"
    sql: ${TABLE}.sales_draft ;;
    drill_fields: [market,transaction_date]
  }
  measure: click_count {
    type: sum
    sql: ${TABLE}.clicks_draft ;;
  }
  measure: unit_sold {
    type: sum
    sql: ${TABLE}.net_items_draft ;;
    drill_fields: [market,transaction_date]
  }
  measure: placement_fee {
    value_format: "#,##0.00"
    type: sum
    sql: ${TABLE}.placement_amount ;;
    drill_fields: [market,transaction_date]
  }
  measure: fee_and_com_total {
    value_format: "#,##0.00"
    type: sum
    sql: ${TABLE}.placement_fee_and_com ;;
    drill_fields: [market,transaction_date,placement_fee,commission]
  }

}
