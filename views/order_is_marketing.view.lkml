view: order_is_marketing {
  derived_table: {
    explore_source: order_line {
      column: sum_marketing_tag_integer { field: order_tag.sum_marketing_tag_integer }
      column: id {}
    }
  }
  dimension: sum_marketing_tag_integer {
    label: "Order Line Sum Marketing Tag Integer"
    type: number
    hidden: yes
  }
  dimension: id {
    type: number
    hidden: yes
  }
  dimension: is_marketing {
    type: yesno
    sql: ${sum_marketing_tag_integer}>0 ;;
  }
}
