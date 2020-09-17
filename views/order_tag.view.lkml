view: order_tag {
  sql_table_name: `aerobic-datum-283623.shopify.order_tag`
    ;;

  dimension: pk {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${pk2_order_id} * 100 + ${pk2_index} ;;
  }
  dimension: pk2_index {
    hidden: yes
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: pk2_order_id {
    type: number
    hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: value {
    label: "Order Tag Value"
    type: string
    hidden: yes
    sql: ${TABLE}.value ;;
  }

  dimension: marketing_tag_integer {
    type: number
    hidden: yes
    sql: CASE WHEN value in
            ('Samples','B2B Sample','Media Sample','Partnership','Giveaway','Influence','Investor')
            THEN 1 ELSE 0 END;;
  }

  measure: sum_marketing_tag_integer {
    type: sum
    hidden: yes
    sql: ${marketing_tag_integer} ;;
  }
}
