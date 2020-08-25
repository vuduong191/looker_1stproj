view: inventory_insert {
  derived_table: {
    datagroup_trigger: daily_datagroup
    create_process: {
      sql_step: INSERT INTO looker_scratch.inventory_snapshot SELECT
        product_variant.inventory_item_id  AS inventory_item_id,
        product_variant.inventory_quantity  AS inventory_quantity,
        product_variant.product_id  AS product_id,
        product_variant.sku  AS sku,
        product_variant.title  AS title,
        CURRENT_DATE AS snapshot_date,
      FROM `aerobic-datum-283623.shopify.product_variant`
          AS product_variant

      GROUP BY 1,2,3,4,5 ;;
    }
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: product_variant_inventory_item_id {
    type: number
    sql: ${TABLE}.product_variant_inventory_item_id ;;
  }

  dimension: product_variant_inventory_quantity {
    type: number
    sql: ${TABLE}.product_variant_inventory_quantity ;;
  }

  dimension: product_variant_product_id {
    type: number
    sql: ${TABLE}.product_variant_product_id ;;
  }

  dimension: product_variant_sku {
    type: string
    sql: ${TABLE}.product_variant_sku ;;
  }

  dimension: product_variant_title {
    type: string
    sql: ${TABLE}.product_variant_title ;;
  }

  dimension: product_variant_id {
    type: number
    sql: ${TABLE}.product_variant_id ;;
  }

  set: detail {
    fields: [
      product_variant_inventory_item_id,
      product_variant_inventory_quantity,
      product_variant_product_id,
      product_variant_sku,
      product_variant_title,
      product_variant_id
    ]
  }
}
