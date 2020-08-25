view: customer {
  sql_table_name: `aerobic-datum-283623.shopify.customer`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: accepts_marketing {
    type: yesno
    sql: ${TABLE}.accepts_marketing ;;
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: default_address_id {
    type: number
    sql: ${TABLE}.default_address_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: orders_count {
    type: number
    value_format_name: "decimal_0"
    sql: ${TABLE}.orders_count ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: tax_exempt {
    type: yesno
    sql: ${TABLE}.tax_exempt ;;
  }

  dimension: total_spent {
    type: number
    sql: ${TABLE}.total_spent ;;
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

  dimension: verified_email {
    type: yesno
    sql: ${TABLE}.verified_email ;;
  }

  measure: count {
    type: count
    drill_fields: [id, last_name, first_name]
  }
  measure: sum_of_total_spent {
    type: sum
    value_format_name: "usd"
    sql: ${total_spent} ;;
    drill_fields: [id, last_name, first_name]
  }
  measure: sum_of_total_spent_acceptemail {
    type: sum
    filters: [accepts_marketing: "Yes"]
    value_format_name: "usd"
    sql: ${total_spent} ;;
    drill_fields: [id, last_name, first_name]
  }
  measure: prc_acc {
    type: number
    value_format_name: "percent_0"
    sql: ${sum_of_total_spent_acceptemail}/NULLIF(${sum_of_total_spent},0) ;;
    drill_fields: [id, last_name, first_name]
  }
}
