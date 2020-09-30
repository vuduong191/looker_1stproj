view: order_is_b2b {
  derived_table: {
    explore_source: order_line {
      column: sum_b2b_tag_integer { field: order_tag.sum_b2b_tag_integer }
      column: id {}
    }
  }
  dimension: id {
    type: number
    hidden: yes
    primary_key: yes
  }
  dimension: sum_b2b_tag_integer {
    label: "Order Line Sum B2B Tag Integer"
    type: number
    hidden: yes
  }

  dimension: is_b2b {
    description: "Indicates if the order is a marketing order"
    type: yesno
    sql: ${sum_b2b_tag_integer}>0 ;;
  }
}
