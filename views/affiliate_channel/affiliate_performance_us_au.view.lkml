
view: affiliate_performance_us_au {
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

  dimension: transaction_date {
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: pub_id {
    sql: ${TABLE}.publisher_id ;;
  }
  dimension: market {
    sql: ${TABLE}.market ;;
  }
  measure: clicks_draft {
    type: sum
    description: "Sum of clicks"
    sql: ${TABLE}.of_clicks ;;
    drill_fields: [market,transaction_date]
  }
  measure: orders_draft {
    type: sum
    sql: ${TABLE}.of_orders ;;
    drill_fields: [market,transaction_date]
  }
  measure: net_items_draft {
    type: sum
    description: "Net units sold"
    sql: ${TABLE}.of_net_items ;;
    drill_fields: [market,transaction_date]
  }
  measure: sales_draft {
    type: sum
    value_format: "#,##0.00"
    sql: ${TABLE}.sales ;;
    drill_fields: [market,transaction_date]
  }
  measure: total_commission_draft {
    type: sum
    value_format: "#,##0.00"
    sql: ${TABLE}.total_commission ;;
    drill_fields: [market,transaction_date]
  }
}
