view: inventory_insert_2_vu {
  derived_table: {
    sql_trigger_value: SELECT EXTRACT(DATE FROM TIMESTAMP_ADD(CURRENT_TIMESTAMP, INTERVAL 10 MINUTE) AT TIME ZONE "America/Los_Angeles") ;;
    create_process: {
      sql_step: CREATE TABLE ${SQL_TABLE_NAME} as
        SELECT product_variant.sku AS product_variant_sku, SUM(product_variant.inventory_quantity) AS inventory_quantity, CURRENT_DATE AS day
        FROM `aerobic-datum-283623.shopify.product_variant` AS product_variant GROUP BY 1;;
      sql_step:
        INSERT INTO looker_scratch.inventory_snapshot_us SELECT
          product_variant_sku,
          day,
          inventory_quantity
        FROM  ${SQL_TABLE_NAME};;
    }
  }
}
