view: inventory_snapshot {
  sql_table_name: `aerobic-datum-283623.looker_scratch.inventory_snapshot`
    ;;

  dimension: pk {
    hidden: yes
    sql: ${inventory_item_id} || ${snapshot_date} ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: inventory_quantity {
    type: number
    sql: ${TABLE}.inventory_quantity ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}.snapshot_date ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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
