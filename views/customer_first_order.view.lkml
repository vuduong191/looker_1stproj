view: customer_first_order {
    derived_table: {
      explore_source: order_line {
        column: id { field: customer.id }
        column: min_order_id { field: order.min_order_id }
      }
    }
    dimension: customer_id {
      type: number
      primary_key: yes
      hidden: yes
      sql: ${TABLE}.id ;;
    }
    dimension: min_order_id {
      type: number
      hidden: yes
    }
    dimension_group: first_order {
      label: "Customer First Order"
      description: "The date and time of a customers' first order"
      type: time
      timeframes: [raw, date, week, month, year, quarter]
      sql: ${order.created_raw} ;;
    }
  }
