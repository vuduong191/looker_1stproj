view: order_line {
  sql_table_name: `aerobic-datum-283623.shopify.order_line`
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

  dimension: fulfillable_quantity {
    type: number
    sql: ${TABLE}.fulfillable_quantity ;;
  }

  dimension: fulfillment_service {
    type: string
    sql: ${TABLE}.fulfillment_service ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}.fulfillment_status ;;
  }

  dimension: gift_card {
    type: yesno
    sql: ${TABLE}.gift_card ;;
  }

  dimension: grams {
    type: number
    sql: ${TABLE}.grams ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: pre_tax_price {
    type: number
    sql: ${TABLE}.pre_tax_price ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: property_bundle_id {
    type: string
    sql: ${TABLE}.property_bundle_id ;;
  }

  dimension: property_bundle_image {
    type: string
    sql: ${TABLE}.property_bundle_image ;;
  }

  dimension: property_bundle_url {
    type: string
    sql: ${TABLE}.property_bundle_url ;;
  }

  dimension: property_complete_bundle {
    type: number
    sql: ${TABLE}.property_complete_bundle ;;
  }

  dimension: property_discount {
    type: number
    sql: ${TABLE}.property_discount ;;
  }

  dimension: property_discount_bundle {
    type: yesno
    sql: ${TABLE}.property_discount_bundle ;;
  }

  dimension: property_discount_name {
    type: string
    sql: ${TABLE}.property_discount_name ;;
  }

  dimension: property_discount_type {
    type: string
    sql: ${TABLE}.property_discount_type ;;
  }

  dimension: property_from_wishlist {
    type: number
    sql: ${TABLE}.property_from_wishlist ;;
  }

  dimension: property_pos_code_key_for_gift_card_creation {
    type: string
    sql: ${TABLE}.property_pos_code_key_for_gift_card_creation ;;
  }

  dimension: property_pre_ordered_items {
    type: number
    sql: ${TABLE}.property_pre_ordered_items ;;
  }

  dimension: property_products {
    type: string
    sql: ${TABLE}.property_products ;;
  }

  dimension: property_shipping_from_august_10_th {
    type: number
    sql: ${TABLE}.property_shipping_from_august_10_th ;;
  }

  dimension: property_shipping_from_july_20_th {
    type: number
    sql: ${TABLE}.property_shipping_from_july_20_th ;;
  }

  dimension: property_shipping_from_july_31_st {
    type: number
    sql: ${TABLE}.property_shipping_from_july_31_st ;;
  }

  dimension: property_ships_from_august_10_th {
    type: number
    sql: ${TABLE}.property_ships_from_august_10_th ;;
  }

  dimension: property_ships_from_august_25_th {
    type: number
    sql: ${TABLE}.property_ships_from_august_25_th ;;
  }

  dimension: property_ships_from_july_20_th {
    type: number
    sql: ${TABLE}.property_ships_from_july_20_th ;;
  }

  dimension: property_ships_from_july_31_st {
    type: number
    sql: ${TABLE}.property_ships_from_july_31_st ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: requires_shipping {
    type: yesno
    sql: ${TABLE}.requires_shipping ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}.taxable ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: total_discount {
    type: number
    sql: ${TABLE}.total_discount ;;
  }

  dimension: variant_id {
    type: number
    sql: ${TABLE}.variant_id ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [id, property_discount_name, name]
  }
  measure: sum {
    type: sum
    label: "Total Unit Sold"
    sql: ${quantity} ;;
  }
}
