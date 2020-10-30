view: avg_weekly_sales_by_category {
    derived_table: {
      publish_as_db_view: yes
      explore_source: avg_weekly_sales_1 {
        column: created_week {}
        column: category {}
        column: avg_weekly_units_sold {}
        column: sku_count {}
      }
      sql_trigger_value: SELECT EXTRACT(WEEK FROM TIMESTAMP_ADD(CURRENT_TIMESTAMP, INTERVAL -90 MINUTE) AT TIME ZONE "America/Los_Angeles") ;;

    }
    dimension: created_week {
      type: date_week
    }
    dimension: category {
      label: "Avg Weekly Sales 1 Product Category Vu"
    }
    dimension: avg_weekly_units_sold {
      value_format: "0.00"
      type: number
    }
    dimension: sku_count {
      value_format: "#,##0"
      type: number
    }
  }
