view: list_exclusion {
  sql_table_name: `klaviyo.list_exclusion`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }

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

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: list_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.list_id ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  measure: count {
    type: count
    drill_fields: [id, list.id, list.folder_name, list.list_name]
  }
}
