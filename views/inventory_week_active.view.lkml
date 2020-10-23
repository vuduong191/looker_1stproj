view: inventory_week_active {
    derived_table: {
      sql_trigger_value: SELECT EXTRACT(WEEK FROM TIMESTAMP_ADD(CURRENT_TIMESTAMP, INTERVAL -10 MINUTE) AT TIME ZONE "America/Los_Angeles") ;;
      explore_source: inventory_snapshot_us {
        column: day_week{}
        column: count {}
        column: count_of_active_item_days {}
        column: count_of_inactive_item_days {}
        column: sku {}
      }
    }
    dimension: pk {
      primary_key: yes
      hidden: yes
      sql: ${day_week} || ${sku} ;;
    }
    dimension: day_week {
      type: date_week
      convert_tz: no
      # datatype: date
    }
    dimension: count {
      type: number
    }
    # dimension: count_of_active_item_days {
    #   type: number
    #   drill_fields: [inventory_snapshot_us.day_raw, inventory_snapshot_us.inventory_quantity]
    # }
    dimension: count_of_inactive_item_days {
      type: number
    }
    # dimension: is_active {
    #   type: yesno
    #   sql: ${count_of_active_item_days} = 7 ;;
    # }
    dimension: is_inactive {
      type: yesno
      sql: ${count_of_inactive_item_days} > 0 ;;
    }
    dimension: sku {}
  }
