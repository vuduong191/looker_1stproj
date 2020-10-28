view: ga_channel_performance_au {
  sql_table_name: `aerobic-datum-283623.google_analytics_au.ga_channel_performance_au`
    ;;

  dimension: _fivetran_id {
    type: string
    sql: ${TABLE}._fivetran_id ;;
  }

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

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

  dimension: channel_grouping {
    type: string
    sql: ${TABLE}.channel_grouping ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: new_users {
    type: number
    sql: ${TABLE}.new_users ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}.profile ;;
  }

  dimension: session_duration {
    type: number
    sql: ${TABLE}.session_duration ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: transaction_revenue {
    type: number
    sql: ${TABLE}.transaction_revenue ;;
  }

  dimension: transactions {
    type: number
    sql: ${TABLE}.transactions ;;
  }

  dimension: unique_pageviews {
    type: number
    sql: ${TABLE}.unique_pageviews ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
