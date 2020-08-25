view: inventory_insert_native {
    derived_table: {
      explore_source: product_variant {
        column: inventory_item_id {}
        column: inventory_quantity {}
        column: product_id {}
        column: sku {}
        column: title {}
      }
    persist_for: "1 hour"
    }
    dimension: inventory_item_id {
      type: number
    }
    dimension: inventory_quantity {
      type: number
    }
    dimension: product_id {
      type: number
    }
    dimension: sku {}
    dimension: title {}
  }
