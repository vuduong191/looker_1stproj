view: placement_pub_affiliate {
  sql_table_name: `aerobic-datum-283623.google_sheets.placement_pub_affiliate`
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
    type: number
    hidden: yes
    sql: ${TABLE}._row ;;
  }

  dimension: market {
    type: string
    sql: ${TABLE}.market ;;
  }

  dimension: offer_id {
    type: number
    sql: ${TABLE}.offer_id ;;
  }

  dimension: offername {
    type: string
    sql: ${TABLE}.offername ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }

  dimension: pub_id {
    type: number
    sql: ${TABLE}.pub_id ;;
  }

  dimension: pub_name {
    type: string
    sql: ${TABLE}.pub_name ;;
  }

  measure: count {
    type: count
    drill_fields: [offername, pub_name]
  }
}
