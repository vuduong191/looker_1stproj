view: affiliate_daily_performance_us {
  derived_table: {
    sql:
      SELECT * FROM
        (
          SELECT DISTINCT *, DENSE_RANK() OVER(PARTITION BY transaction_date, market
                 ORDER BY write_day DESC) AS rank
          FROM `aerobic-datum-283623.test_dataset_vu.rakuten_report`
          WHERE transaction_date < EXTRACT(DATE FROM CURRENT_TIMESTAMP() AT TIME ZONE 'America/Los_Angeles')
          AND market = "us"
         )
        WHERE rank = 1;;
    sql_trigger_value: SELECT EXTRACT(DATE FROM TIMESTAMP_ADD(CURRENT_TIMESTAMP, INTERVAL -60 MINUTE) AT TIME ZONE "America/Los_Angeles") ;;
  }

  dimension_group: transaction {
    type: time
    timeframes: [date, week, month, year]
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
    WHEN {% parameter timeframe_picker %} = 'Date' THEN CAST(transaction_date AS STRING)
    WHEN {% parameter timeframe_picker %} = 'Week' THEN CAST(DATE_TRUNC(${TABLE}.transaction_date, WEEK) AS STRING)
    WHEN{% parameter timeframe_picker %} = 'Month' THEN CAST(DATE_TRUNC(${TABLE}.transaction_date, MONTH) AS STRING)
    END ;;
  }
  measure: clicks {
    type: sum
    description: "Sum of clicks"
    drill_fields: [transaction_date, clicks]
    sql: ${TABLE}.of_clicks ;;
  }
  measure: orders {
    type: sum
    sql: ${TABLE}.of_orders ;;
  }
  measure: items {
    type: sum
    sql: ${TABLE}.of_items ;;
  }
  measure: cancelled_items {
    type: sum
    sql: ${TABLE}.of_cancelled_items ;;
  }
  measure: net_items {
    type: sum
    sql: ${TABLE}.of_net_items ;;
  }
  measure: sales {
    type: sum
    sql: ${TABLE}.sales ;;
  }
  measure: total_commission {
    type: sum
    sql: ${TABLE}.total_commission ;;
  }
}
