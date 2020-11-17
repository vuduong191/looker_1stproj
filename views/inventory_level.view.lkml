view: inventory_level {
  sql_table_name: `@{schema}.inventory_level`
    ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: available {
    type: number
    sql: ${TABLE}.available ;;
  }

  dimension: inventory_item_id {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [inventory_item.id]
  }
  measure: current_inventory {
    type: sum
    value_format_name: decimal_0
    sql: ${available} ;;
  }
}
