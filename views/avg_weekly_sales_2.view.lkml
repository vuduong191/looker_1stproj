view: avg_weekly_sales_2 {
    derived_table: {
      explore_source: avg_weekly_sales_1 {
        column: sku {}
        column: product {}
        column: created_week {}
        column: category {}
        column: color {}
        column: material {}
        column: size {}
        derived_column: weekly_sales_rank {
          sql: RANK() OVER (ORDER BY avg_weekly_sales DESC) ;;
        }
        column: avg_weekly_sales {}
        column: avg_weekly_units_sold {}
        column: active_week_count {}
        filters: {
          field: avg_weekly_sales_1.created_week
          value: "12 weeks"
        }
      }
    }
    dimension: sku {}
    dimension: weekly_sales_rank {
      type: number
    }
    dimension: product {
      label: "Product Vu"
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
    dimension: size {
      label: "Product Size Vu"
    }
    dimension: avg_weekly_sales {
      value_format: "$0.00"
      type: number
    }
    dimension: avg_weekly_units_sold {
      value_format: "0.00"
      type: number
    }
    dimension: active_week_count {
      value_format: "0"
      type: number
    }
  }
