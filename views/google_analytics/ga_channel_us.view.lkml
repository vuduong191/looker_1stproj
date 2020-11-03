view: ga_channel_us {
  derived_table: {
    explore_source: ga_channel_performance_us {
      column: channel_grouping {}
      column: sessions {}
      column: transactions {}
      column: transaction_revenue {}
      column: bounces {}
      column: session_duration {}
      column: pageviews {}
      column: new_users {}
      column: date_raw {}
      column: unique_pageviews {}
      column: users {}
    }
  }
  dimension: channel_grouping {}
  dimension: channel_type {
    type: string
    sql: CASE WHEN channel_grouping in
            ('(Other)','Direct','Back in Stock','Ettitude Blog','Klaviyo Email','Organic Search','Friendbuy','Other Social','SMS','Referral')
            THEN "non-paid" ELSE "paid" END;;
  }
  dimension: major_channel {
    type: yesno
    sql: CASE WHEN channel_grouping in
            ('Direct','Klaviyo Email','Organic Search','Affiliates','Google Shopping','Paid Search','Paid Social','Referral')
            THEN true ELSE false END;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, year]
    datatype: date
    sql: ${TABLE}.date_raw;;
  }
  parameter: timeframe_picker {
    label: "Date Granularity"
    type: string
    allowed_value: { value: "Date" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    default_value: "Date"
  }
  dimension: dynamic_timeframe {
    type: string
    sql:
    CASE
    WHEN {% parameter timeframe_picker %} = 'Date' THEN CAST(${date_raw} AS STRING)
    WHEN {% parameter timeframe_picker %} = 'Week' THEN CAST(DATE_TRUNC(${TABLE}.date_raw, WEEK) AS STRING)
    WHEN{% parameter timeframe_picker %} = 'Month' THEN CAST(DATE_TRUNC(${TABLE}.date_raw, MONTH) AS STRING)
    END ;;
  }
  measure: sessions {
    type: sum
    description: "Traffic"
    sql: ${TABLE}.sessions ;;
  }
  measure: transactions {
    type: sum
    description: "Orders"
    sql: ${TABLE}.transactions ;;
  }
  measure: revenue {
    type: sum
    value_format_name: "decimal_0"
    sql: ${TABLE}.transaction_revenue ;;
  }
  measure: bounces {
    hidden: yes
    type: sum
    sql: ${TABLE}.bounces ;;
  }
  measure: session_duration {
    hidden: yes
    type: sum
    sql: ${TABLE}.session_duration ;;
  }
  measure: pageviews {
    type: sum
    sql: ${TABLE}.pageviews ;;
  }

  measure: new_users {
    type: sum
    sql: ${TABLE}.new_users ;;
  }

  measure: unique_pageviews {
    type: sum
    sql: ${TABLE}.unique_pageviews ;;
  }

  measure: users {
    type: sum
    sql: ${TABLE}.users ;;
  }
}
