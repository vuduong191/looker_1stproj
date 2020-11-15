view: ga_affiliate_traffic_order_au_us {

  measure: orders {
    type: number
    sql: coalesce(${ga_affiliate_traffic_order_us.order_count},${ga_affiliate_traffic_order_au.order_count}) ;;
  }

}
