view: order_line_refund {
  sql_table_name: `aerobic-datum-283623.shopify.order_line_refund`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: order_line_id {
    type: number
    sql: ${TABLE}.order_line_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: refund_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.refund_id ;;
  }

  dimension: restock_type {
    type: string
    sql: ${TABLE}.restock_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, refund.id]
  }
}
