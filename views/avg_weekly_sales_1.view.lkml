view: avg_weekly_sales_1 {
    derived_table: {
      explore_source: order_line {
        column: sku {}
        column: created_week { field: order.created_week }
        column: is_cancelled {field: order.is_cancelled}
        column: sum {}
        column: total_price {}
        column: category { field: vu_product_data_us.category }
        column: color { field: vu_product_data_us.color }
        column: material { field: vu_product_data_us.material }
        column: product { field: vu_product_data_us.product }
        column: size { field: vu_product_data_us.size }
        filters: [
          inventory_week_active.is_inactive : "No",
          order_is_marketing.is_marketing: "No",
          order.is_cancelled : "No",
          order_is_b2b.is_b2b : "No"
        ]
        filters: {
          field: order.source_name
          value: "web,580111"
        }
      }
    }
    dimension: sku {}
    dimension: created_week {
      type: date_week
    }
    dimension: sum {
      label: "Order Line Total Unit Sold"
      value_format: "#,##0"
      type: number
    }
    dimension: total_price {
      value_format: "$#,##0.00"
      type: number
    }
    dimension: category {
      label: "Product Category Vu"
    }
    dimension: color {
      label: "Product Color Vu"
    }
    dimension: material {
      label: "Product Material Vu"
    }
    dimension: product {
      label: "Product Vu"
    }
    dimension: size {
      label: "Product Size Vu"
    }
    measure: avg_weekly_units_sold {
      type: average
      value_format: "0.00"
      sql: ${sum} ;;
    }
    measure: avg_weekly_sales {
      type: average
      value_format:"$0.00"
      sql: ${total_price} ;;
    }
    measure: active_week_count {
      type: count_distinct
      value_format:"0"
      sql: ${created_week} ;;
    }
  }
