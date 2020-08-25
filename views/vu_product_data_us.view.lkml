view: vu_product_data_us {
  sql_table_name: `aerobic-datum-283623.google_sheets.vu_product_data_us`
    ;;

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: _row {
    type: number
    hidden: yes
    sql: ${TABLE}._row ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: product_title {
    type: string
    sql: ${TABLE}.product_title ;;
  }

  dimension: product_variant {
    type: string
    sql: ${TABLE}.product_variant ;;
  }

  dimension: product_variant_sku {
    type: string
    primary_key: yes
    sql: ${TABLE}.product_variant_sku ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
