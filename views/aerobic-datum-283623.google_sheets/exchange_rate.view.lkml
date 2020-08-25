view: exchange_rate {
  sql_table_name: `aerobic-datum-283623.google_sheets.exchange_rate`
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

  dimension: _row {
    type: number
    hidden: yes
    sql: ${TABLE}._row ;;
  }

  dimension: bom {
    type: string
    sql: ${TABLE}.bom ;;
  }

  dimension: eom {
    type: string
    sql: ${TABLE}.eom ;;
  }

  dimension: ex {
    type: number
    sql: ${TABLE}.ex ;;
  }

  dimension: month_str {
    type: string
    sql: ${TABLE}.month_str ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
