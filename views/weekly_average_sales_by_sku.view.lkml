view: weekly_average_sales_by_sku {
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
        filters: {
          field: inventory_week_active.is_inactive
          value: "No"
        }
        filters: {
          field: order_is_marketing.is_marketing
          value: "No"
        }
        filters: {
          field: order.is_cancelled
          value: "No"
        }
      }
    }
    dimension: sku {}
    dimension: created_week {
      type: date_week
    }
    dimension: is_cancelled {
      label: "Order Is Cancelled (Yes / No)"
      type: yesno
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
  }
