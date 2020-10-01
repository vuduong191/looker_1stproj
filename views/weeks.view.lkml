view: weeks {
derived_table: {
  explore_source: order_line {
    column: created_week { field: order.created_week }

  }
}
dimension: created_week {
  primary_key: yes
  type: date_week
}
}
