view: woh {
    derived_table: {
      publish_as_db_view: yes
      explore_source: product_variant {
        column: sku {}
        column: inventory_quantity {}
        column: category { field: vu_product_data_us.category }
        column: color { field: vu_product_data_us.color }
        column: material { field: vu_product_data_us.material }
        column: product { field: vu_product_data_us.product }
        column: size { field: vu_product_data_us.size }
        column: rank_group_l12w { field: avg_weekly_sales_2.rank_group_l12w }
        column: avg_weekly_units_sold { field: avg_weekly_sales_2.avg_weekly_units_sold }
        column: avg_weekly_sales { field: avg_weekly_sales_2.avg_weekly_sales }
        column: active_week_count { field: avg_weekly_sales_2.active_week_count }
        derived_column: woh {
          sql:  inventory_quantity / NULLIF(avg_weekly_units_sold, 0)  ;;
        }
        filters: {
          field: product_variant.sku
          value: "-NULL"
        }
        filters: {
          field: vu_product_data_us.category
          value: "-NULL"
        }
      }
      sql_trigger_value: SELECT EXTRACT(DATE FROM TIMESTAMP_ADD(CURRENT_TIMESTAMP, INTERVAL -60 MINUTE) AT TIME ZONE "America/Los_Angeles") ;;
    }
    dimension: sku {}
    dimension: inventory_quantity {
      label: "Current Inv"
      type: number
    }
    dimension: woh {
      type: number
      value_format: "0.0"
    }
    dimension: category {
      label: "Category"
    }
    dimension: color {
      label: "Color"
    }
    dimension: avg_weekly_sales {
      label: "Avg Weekly Sales"
      value_format: "0.00"
      type: number
    }
    dimension: material {
      label: "Material"
    }
    dimension: product {
      label: "Product"
    }
    dimension: size {
      label: "Size"
    }
    dimension: rank_group_l12w {
      label: "Rank Group L12w"
#       type: tier
#       tiers: [0,11,31,101]
    }
    dimension: avg_weekly_units_sold {
      label: "Avg Weekly Units Sold"
      value_format: "0.00"
      type: number
    }
    dimension: active_week_count {
      label: "Active Week Count"
      description: "Number of week without stockout in the last 12 weeks"
      value_format: "0"
      type: number
    }
#     dimension: inv_adj {
#       description: "Return 0 if inventory is negative"
#       label: "Inventory Adjusted"
#       type: number
#       sql: if(inventory_quantity<0,0,inventory_quantity) ;;
#
#     }
#     dimension: woh_tier {
#       type: tier
#       tiers: [0.01,5,9,13,17,21,25]
#       style: integer
#       sql: ${woh} ;;
#     }
    dimension: woh_tier {
      case: {
        when: {
          sql: ${woh} IS NULL;;
          label: "Undefined"
        }
        when: {
          sql: ${woh} <= 0 ;;
          label: "0"
        }
        when: {
          sql: ${woh} <= 4 ;;
          label: "<=04w"
        }
        when: {
          sql: ${woh} <= 8 ;;
          label: "<=08w"
        }
        when: {
          sql: ${woh} <=12 ;;
          label: "<=12w"
        }
        when: {
          sql: ${woh} <=16 ;;
          label: "<=16w"
        }
        when: {
          sql: ${woh} <=20 ;;
          label: "<=20w"
        }
        else: ">20w"
      }
  }
  measure: count_sku {
    type: count_distinct
    sql: ${sku} ;;
    drill_fields: [sku,product,size,color,inventory_quantity,avg_weekly_units_sold,active_week_count]
  }
  measure: sum_weekly_unit_sold {
    type: sum
    value_format: "0.0"
    sql: ${avg_weekly_units_sold} ;;
  }
  measure: sum_inventory {
    label: "Inv_all"
    type: sum
    value_format: "0"
    sql: ${inventory_quantity} ;;
  }
}
