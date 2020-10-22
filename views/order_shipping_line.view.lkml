view: order_shipping_line {
  sql_table_name: `@{schema}.order_shipping_line`
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

  dimension: carrier_identifier {
    type: string
    sql: ${TABLE}.carrier_identifier ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: delivery_category {
    type: string
    sql: ${TABLE}.delivery_category ;;
  }

  dimension: discounted_price {
    type: number
    sql: ${TABLE}.discounted_price ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: requested_fulfillment_service_id {
    type: string
    sql: ${TABLE}.requested_fulfillment_service_id ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id, order_shipping_tax_line.count]
  }
}