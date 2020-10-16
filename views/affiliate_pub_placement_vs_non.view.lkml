view: affiliate_pub_placement_vs_non {
  derived_table: {
    explore_source: affiliate_publisher_performance {
      column: transaction_date {}
      # column: placement { field: placement_pub_affiliate.placement }
      column: clicks {}
      column: market {}
      column: net_items {}
      column: orders {}
      column: sales {}
      column: total_commission {}
      column: pub_id {}
      column: pub_name {}
    }
  }
  dimension_group: transaction {
    type: time
    timeframes: [date, week, month, year]
    datatype: date
    sql: ${TABLE}.transaction_date ;;
  }
  # dimension: placement {
  #   type: string
  # }
  dimension: market {
    type: string
  }
  dimension: clicks {
    description: "Sum of clicks"
    type: number
  }
  dimension: net_items {
    description: "Net units sold"
    type: number
  }
  dimension: orders {
    type: number
  }
  dimension: sales {
    value_format: "#,##0.00"
    type: number
  }
  dimension: total_commission {
    value_format: "#,##0.00"
    type: number
  }
  dimension: pub_id {
    type: string
  }
  dimension: pub_name {}
}
