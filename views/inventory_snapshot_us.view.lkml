view: inventory_snapshot_us {
  sql_table_name: `aerobic-datum-283623.looker_scratch.inventory_snapshot_us`
    ;;

  dimension_group: day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.day ;;
  }

  dimension: inventory_quantity {
    type: number
    sql: ${TABLE}.inventory_quantity ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.product_variant_sku ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: count_of_active_item_days {
    type: count
    filters: [inventory_quantity: ">0"]
  }
  measure: count_of_inactive_item_days {
    type: count
    filters: [inventory_quantity: "<=0"]
  }
}
