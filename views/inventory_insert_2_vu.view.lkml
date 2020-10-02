view: inventory_insert_2_vu {
    derived_table: {
      sql_trigger_value: SELECT EXTRACT(DATE FROM TIMESTAMP_ADD(CURRENT_TIMESTAMP, INTERVAL 10 MINUTE) AT TIME ZONE "America/Los_Angeles") ;;
      create_process: {
        sql_step:
        INSERT INTO looker_scratch.inventory_snapshot_us SELECT
          product_variant.sku  AS product_variant_sku,
          CURRENT_DATE AS day,
          product_variant.inventory_quantity  AS inventory_quantity
        FROM `aerobic-datum-283623.shopify.product_variant` AS product_variant;;
      }
    }
    dimension: inventory_quantity {
      type: number
      sql: ${TABLE}.inventory_quantity ;;
    }


    dimension: product_variant_sku {
      type: string
      sql: ${TABLE}.product_variant_sku ;;
    }
  }
