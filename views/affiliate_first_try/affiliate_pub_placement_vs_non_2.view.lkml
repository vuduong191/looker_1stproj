# If necessary, uncomment the line below to include explore_source.

# include: "us.model.lkml"

view: affiliate_pub_placement_vs_non_2 {
  derived_table: {
    explore_source: affiliate_pub_placement_vs_non {
      column: pub_name {}
      # column: placement {}
      column: clicks {}
      column: market {}
      column: net_items {}
      column: orders {}
      column: pub_id {}
      column: placement_day { field: placement_payment.placement_day }
      column: sales {}
      column: total_commission {}
      column: transaction_raw {}
      column: placement_amount { field: placement_payment.placement_amount }
      derived_column: placement_fee_and_com {
        sql:  ifnull(placement_amount, 0 ) + ifnull(total_commission, 0 )  ;;
      }
    }
  }
  dimension: pub_name {}
  # dimension: placement {}
  dimension: clicks {
    hidden: yes
    description: "Sum of clicks"
    type: number
  }
  dimension: market {}
  dimension: net_items {
    hidden: yes
    description: "Net units sold"
    type: number
  }
  dimension: placement_fee_and_com {
    hidden: yes
    description: "Placement Fee + Commission"
    value_format: "#,##0.00"
    type: number
  }
  dimension: orders {
    hidden: yes
    type: number
  }
  dimension: pub_id {}
  dimension: placement_day {}

  dimension: sales {
    hidden: yes
    value_format: "#,##0.00"
    type: number
  }
  dimension: total_commission {
    hidden: yes
    value_format: "#,##0.00"
    type: number
  }

  # dimension_group: transaction {
  #   type: time
  #   timeframes: [date, week, month, year]
  #   datatype: date
  #   sql: ${TABLE}.transaction_date ;;
  # }
  dimension_group: transaction {
    type: time
    timeframes: [raw, date, week, month, year]
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
  measure: commission {
    type: sum
    value_format: "#,##0.00"
    sql: ${total_commission} ;;
    drill_fields: [market,transaction_date,pub_name]
  }
  measure: order_count {
    type: sum
    value_format: "0"
    sql: ${orders} ;;
    drill_fields: [market,transaction_date,pub_name]
  }
  measure: revenue {
    type: sum
    value_format: "#,##0.00"
    sql: ${sales} ;;
    drill_fields: [market,transaction_date,pub_name]
  }
  measure: click_count {
    type: sum
    sql: ${clicks} ;;
  }
  measure: unit_sold {
    type: sum
    sql: ${net_items} ;;
    drill_fields: [market,transaction_date,pub_name]
  }
  measure: placement_fee {
    value_format: "#,##0.00"
    type: sum
    sql: ${placement_amount} ;;
    drill_fields: [market,transaction_date,pub_name]
  }
  measure: fee_and_com_total {
    value_format: "#,##0.00"
    type: sum
    sql: ${placement_fee_and_com} ;;
    drill_fields: [market,transaction_date,pub_name,placement_fee,commission]
  }
  # measure: avg_weekly_sales {
  #   type: average
  #   value_format:"$0.00"
  #   sql: ${total_price} ;;
  # }
  dimension: placement_amount {
    hidden: yes
    label: "Payment Placement Amount"
    type: number
  }
}