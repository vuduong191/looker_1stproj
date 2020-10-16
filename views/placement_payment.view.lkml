view: placement_payment {
  sql_table_name: `aerobic-datum-283623.google_sheets.placement_payment`
    ;;

  dimension_group: _fivetran_synced {
    hidden: yes
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
    hidden: yes
    type: number
    sql: ${TABLE}._row ;;
  }

  dimension_group: payment_day {
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
    sql: ${TABLE}.payment_day ;;
  }

  dimension: placement_amount {
    type: number
    sql: ${TABLE}.placement_amount ;;
  }

  dimension: pub_id {
    type: string
    sql: ${TABLE}.pub_id ;;
  }
  dimension: market {
    type: string
    sql: ${TABLE}.market ;;
  }
  dimension: pub_name {
    type: string
    sql: ${TABLE}.pub_name ;;
  }

  measure: count {
    type: count
    drill_fields: [pub_name]
  }
  measure: payment_sum {
    type: sum
    sql: ${placement_amount} ;;
  }
}
