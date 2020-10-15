view: affiliate_publisher_performance {
  derived_table: {
    sql:
    SELECT * FROM
      (
        SELECT DISTINCT *, DENSE_RANK() OVER(PARTITION BY transaction_date, publisher_id, offer_id, link_id, market
               ORDER BY write_day DESC) AS rank
        FROM `aerobic-datum-283623.test_dataset_vu.rakuten_pub_report`
        WHERE transaction_date < EXTRACT(DATE FROM CURRENT_TIMESTAMP() AT TIME ZONE 'America/Los_Angeles')
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
  dimension: pub_id {
    sql: ${TABLE}.publisher_id ;;
  }
  dimension: market {
    sql: ${TABLE}.market ;;
  }
  dimension: pub_name {
    sql: ${TABLE}.publisher_name ;;
  }
  dimension: offer_id {
    sql: ${TABLE}.offer_id ;;
  }
  dimension: offer_name {
    sql: ${TABLE}.offer_name ;;
  }
  dimension: link_id {
    sql: ${TABLE}.link_id ;;
  }
  dimension: link_name {
    sql: ${TABLE}.link_name ;;
  }
  measure: clicks {
    type: sum
    description: "Sum of clicks"
    sql: ${TABLE}.of_clicks ;;
  }
  measure: orders {
    type: sum
    sql: ${TABLE}.of_orders ;;
  }
  measure: net_items {
    type: sum
    description: "Net units sold"
    sql: ${TABLE}.of_net_items ;;
  }
  measure: sales {
    type: sum
    value_format: "#,##0.00"
    sql: ${TABLE}.sales ;;
  }
  measure: total_commission {
    type: sum
    value_format: "#,##0.00"
    sql: ${TABLE}.total_commission ;;
  }
}
