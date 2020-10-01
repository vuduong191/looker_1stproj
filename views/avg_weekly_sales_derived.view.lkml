view: avg_weekly_sales_derived {
  measure: avg_weekly_sales {
    type: number
    value_format_name: decimal_1
    sql: coalesce(${avg_weekly_sales_1.avg_weekly_units_sold}
        ,min(${avg_weekly_sales_by_category.avg_weekly_units_sold})) ;;
  }
}
