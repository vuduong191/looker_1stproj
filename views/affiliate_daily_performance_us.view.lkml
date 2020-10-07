view: affiliate_daily_performance_us {
  derived_table: {
    sql:
      SELECT * FROM
        (
          SELECT *, RANK() OVER(PARTITION BY transaction_date, market
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

  dimension: impressions {
    type: number
    sql: ${TABLE}.of_impressions ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.of_clicks ;;
  }
  dimension: orders {
    type: number
    sql: ${TABLE}.of_orders ;;
  }
  dimension: items {
    type: number
    sql: ${TABLE}.of_items ;;
  }
  dimension: cancelled_items {
    type: number
    sql: ${TABLE}.of_cancelled_items ;;
  }
  dimension: net_items {
    type: number
    sql: ${TABLE}.of_net_items ;;
  }
  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }
  dimension: total_commission {
    type: number
    sql: ${TABLE}.total_commission ;;
  }
}
