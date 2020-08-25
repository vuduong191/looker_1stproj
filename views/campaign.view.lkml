view: campaign {
  sql_table_name: `klaviyo.campaign`
    ;;
  drill_fields: [id]
# hidden fields {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: _fivetran_deleted {
    hidden: yes
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
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

  dimension: campaign_type {
    label: "Campaign Type"
    description: "This is the type of the campaign"
    type: string
    sql: ${TABLE}.campaign_type ;;
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
#   }
  dimension: email_template_id {
    type: string
    hidden: yes
    sql: ${TABLE}.email_template_id ;;
  }

  dimension: from_email {
    type: string
    sql: ${TABLE}.from_email ;;
  }

  dimension: from_name {
    type: string
    sql: ${TABLE}.from_name ;;
  }

  dimension: is_segmented {
    type: yesno
    sql: ${TABLE}.is_segmented ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: send {
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
    sql: ${TABLE}.send_time ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}.sent_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_id {
    type: string
    sql: ${TABLE}.status_id ;;
  }

  dimension: status_label {
    type: string
    sql: ${TABLE}.status_label ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
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
    sql: ${TABLE}.updated ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      from_name,
      name,
      email_template.name,
      email_template.id,
      campaign_list.count,
      event.count
    ]
  }
}
