view: product {
  sql_table_name: `@{schema}.product`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    hidden: yes
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

  dimension: handle {
    hidden: yes
    type: string
    sql: ${TABLE}.handle ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension_group: published {
    label: "Product Published"
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
    sql: ${TABLE}.published_at ;;
  }

  dimension: published_scope {
    hidden: yes
    type: string
    sql: ${TABLE}.published_scope ;;
  }

  dimension: title {
    hidden: yes
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: vendor {
    hidden: yes
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    label: "Number of Products"
    sql: ${id} ;;
    type: count_distinct
    drill_fields: [id, title, product_type]
    filters: [id: "Not Null"]
  }
}