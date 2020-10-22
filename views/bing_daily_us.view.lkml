view: bing_daily_us {
  sql_table_name: `aerobic-datum-283623.bingads.account_performance_daily_report`
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

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: ad_distribution {
    type: string
    sql: ${TABLE}.ad_distribution ;;
  }

  dimension: assists {
    type: number
    sql: ${TABLE}.assists ;;
  }

  dimension: average_cpc {
    type: number
    sql: ${TABLE}.average_cpc ;;
  }

  dimension: average_position {
    type: number
    sql: ${TABLE}.average_position ;;
  }

  dimension: bid_match_type {
    type: string
    sql: ${TABLE}.bid_match_type ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.conversion_rate ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cost_per_assist {
    type: number
    sql: ${TABLE}.cost_per_assist ;;
  }

  dimension: cost_per_conversion {
    type: number
    sql: ${TABLE}.cost_per_conversion ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
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

  dimension: delivered_match_type {
    type: string
    sql: ${TABLE}.delivered_match_type ;;
  }

  dimension: device_os {
    type: string
    sql: ${TABLE}.device_os ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: low_quality_clicks {
    type: number
    sql: ${TABLE}.low_quality_clicks ;;
  }

  dimension: low_quality_clicks_percent {
    type: number
    sql: ${TABLE}.low_quality_clicks_percent ;;
  }

  dimension: low_quality_conversion_rate {
    type: number
    sql: ${TABLE}.low_quality_conversion_rate ;;
  }

  dimension: low_quality_conversions {
    type: number
    sql: ${TABLE}.low_quality_conversions ;;
  }

  dimension: low_quality_general_clicks {
    type: number
    sql: ${TABLE}.low_quality_general_clicks ;;
  }

  dimension: low_quality_impressions {
    type: number
    sql: ${TABLE}.low_quality_impressions ;;
  }

  dimension: low_quality_impressions_percent {
    type: number
    sql: ${TABLE}.low_quality_impressions_percent ;;
  }

  dimension: low_quality_sophisticated_clicks {
    type: number
    sql: ${TABLE}.low_quality_sophisticated_clicks ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: phone_calls {
    type: number
    sql: ${TABLE}.phone_calls ;;
  }

  dimension: phone_impressions {
    type: number
    sql: ${TABLE}.phone_impressions ;;
  }

  dimension: return_on_ad_spend {
    type: number
    sql: ${TABLE}.return_on_ad_spend ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: revenue_per_assist {
    type: number
    sql: ${TABLE}.revenue_per_assist ;;
  }

  dimension: revenue_per_conversion {
    type: number
    sql: ${TABLE}.revenue_per_conversion ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: top_vs_other {
    type: string
    sql: ${TABLE}.top_vs_other ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
