view: product_variant {
  sql_table_name: `aerobic-datum-283623.shopify.product_variant`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    hidden: yes
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

  dimension: barcode {
    type: string
    hidden: yes
    sql: ${TABLE}.barcode ;;
  }

  dimension: compare_at_price {
    type: number
    hidden: yes
    sql: ${TABLE}.compare_at_price ;;
  }

  dimension_group: created {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: fulfillment_service {
    type: string
    hidden: yes
    sql: ${TABLE}.fulfillment_service ;;
  }

  dimension: grams {
    type: number
    hidden: yes
    sql: ${TABLE}.grams ;;
  }

  dimension: image_id {
    type: number
    hidden: yes
    sql: ${TABLE}.image_id ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: inventory_management {
    hidden: yes
    type: string
    sql: ${TABLE}.inventory_management ;;
  }

  dimension: inventory_policy {
    hidden: yes
    type: string
    sql: ${TABLE}.inventory_policy ;;
  }

  dimension: inventory_quantity {
    type: number
    sql: ${TABLE}.inventory_quantity ;;
  }

  dimension: old_inventory_quantity {
    hidden: yes
    type: number
    sql: ${TABLE}.old_inventory_quantity ;;
  }

  dimension: position {
    hidden: yes
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: requires_shipping {
    type: yesno
    hidden: yes
    sql: ${TABLE}.requires_shipping ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: taxable {
    hidden: yes
    type: yesno
    sql: ${TABLE}.taxable ;;
  }

  dimension: title {
    hidden: yes
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: updated {
    type: time
#     hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: weight {
    type: number
    hidden: yes
    sql: ${TABLE}.weight ;;
  }

  dimension: weight_unit {
    type: string
    hidden: yes
    sql: ${TABLE}.weight_unit ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
