view: cac_us {
  derived_table: {
    explore_source: ga_channel_us {
      column: date_date {}
      column: transactions {}
      filters: {
        field: ga_channel_us.channel_type
        value: "paid"
      }
    }
  }
  dimension_group: date {
    type: time
    timeframes: [date, week, month, year]
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: transactions {
    description: "Orders"
    type: number
  }
}
