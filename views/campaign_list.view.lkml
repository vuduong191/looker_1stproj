view: campaign_list {
  sql_table_name: `klaviyo.campaign_list`
    ;;

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

  dimension: campaign_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: list_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.list_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      list.id,
      list.folder_name,
      list.list_name,
      campaign.from_name,
      campaign.name,
      campaign.id
    ]
  }
}
