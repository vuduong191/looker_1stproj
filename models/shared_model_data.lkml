

# include all the views
include: "/views/**/*.view"
datagroup: us_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
datagroup: daily_datagroup {
  sql_trigger:   SELECT cast(CURRENT_DATE as string); ;;
  max_cache_age: "25 hours"
}

persist_with: us_default_datagroup


explore: order {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}


explore: customer {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}

explore: fivetran_audit {}



explore: integration {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}


explore: order_line {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
join: order {
  type: left_outer
  relationship: many_to_one
  view_label: "Order"
  fields: [order.created_date, order.created_week, order.is_cancelled, order.source_name, sum_of_sales, id, name, count, min_order_id]
  sql_on: ${order.id}=${order_line.order_id} ;;
}

join: order_tag {
  view_label: "Order Line"
  type: left_outer
  relationship: one_to_many
  sql_on: ${order_line.order_id} = ${order_tag.pk2_order_id} ;;
  fields: [value, marketing_tag_integer, sum_marketing_tag_integer, sum_b2b_tag_integer]
}
join: order_is_marketing {
  view_label: "Order Line"
  type: left_outer
  relationship: one_to_one
  sql_on: ${order_line.id} = ${order_is_marketing.id} ;;
}
join: order_is_b2b {
  view_label: "Order Line"
  type: left_outer
  relationship: one_to_one
  sql_on: ${order_line.id} = ${order_is_b2b.id} ;;
}
join: product {
  view_label: "Order Line"
  relationship: many_to_one
  sql_on: ${order_line.product_id}=${product.id} ;;
}
join: vu_product_data_us {
  type: left_outer
  view_label: "Manual Data"
  relationship: many_to_one
  sql_on: ${order_line.sku}=${vu_product_data_us.product_variant_sku} ;;
}
join: inventory_week_active {
  relationship: many_to_one
  sql_on: ${order.created_week} = ${inventory_week_active.day_week}
    AND ${order_line.sku} = ${inventory_week_active.sku};;
}
join: customer {
  relationship: many_to_one
  sql_on: ${customer.id} = ${order.customer_id} ;;
  fields: [id, count, first_name, last_name, created_date, created_month, tax_exempt, verified_email,
    state, orders_count, accepts_marketing, percent_returning, is_returning_customer, average_actual_ltv]
}

# This view adds only one additional field; the first order date!
join: customer_first_order {
  relationship: many_to_one
  sql_on: ${order.id} = ${customer_first_order.min_order_id} ;;
}
# This view adds important dimensions like the number of days since the first order
join: order_customer_dimensions {
  view_label: "Order"
  relationship: one_to_one
  sql:   ;;
}
join: first_order_product_types {
  from: first_order_product_type_switchable
  relationship: many_to_one
  view_label: "Customer"
  sql_on: ${first_order_product_types.customer_id} = ${order.customer_id} ;;
}
}

explore: inventory_level {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
hidden: yes
join: product_variant {
  relationship: many_to_one
  sql_on: ${product_variant.inventory_item_id}=${inventory_level.inventory_item_id} ;;
}
join: product {
  relationship: many_to_one
  sql_on: ${product_variant.product_id} = ${product.id}  ;;
}
}

explore: product_variant {
  always_filter: { filters: [countries.country: "AU"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
join: vu_product_data_us {
  type: left_outer
  view_label: "Manual Data"
  relationship: many_to_one
  sql_on: ${product_variant.sku}=${vu_product_data_us.product_variant_sku} ;;
}
join: weeks {
  type: cross
  relationship: many_to_many
}
join: avg_weekly_sales_1 {
  from: avg_weekly_sales_1_switchable
  type: left_outer
  relationship: one_to_many
  sql_on: ${product_variant.sku} = ${avg_weekly_sales_1.sku} ;;

}
join: avg_weekly_sales_by_category {
  from: avg_weekly_sales_by_category_switchable
  type: left_outer
  relationship: many_to_one
  sql_on: ${vu_product_data_us.category} = ${avg_weekly_sales_by_category.category} AND
    ${weeks.created_week} = ${avg_weekly_sales_by_category.created_week}
    ;;
}
join: avg_weekly_sales_derived {
  relationship: one_to_one
  sql:   ;;
}

join: avg_weekly_sales_2 {
  from: avg_weekly_sales_2_switchable
  type: left_outer
  relationship: many_to_one
  view_label: "L12W Data"
  sql_on: ${product_variant.sku}=${avg_weekly_sales_2.sku} ;;
}
}

explore: inventory_snapshot {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
join: product_variant {
  relationship: many_to_one
  sql_on: ${inventory_snapshot.inventory_item_id} = ${product_variant.inventory_item_id} ;;
}
join: product {
  relationship: many_to_one
  sql_on: ${product_variant.product_id} = ${product.id} ;;
}
}
explore: avg_spent_by_state {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}
explore: avg_weekly_sales_2 {
  from: avg_weekly_sales_2_switchable
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}
explore: avg_weekly_sales_1 {
  from: avg_weekly_sales_1_switchable
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
join: avg_weekly_sales_2 {
  from: avg_weekly_sales_2_switchable
  type: left_outer
  relationship: one_to_one
  sql_on: ${avg_weekly_sales_1.sku}=${avg_weekly_sales_2.sku} ;;
  fields: [avg_weekly_sales_2.rank_group_l12w]
  view_label: "L12W Data"
}

}

explore: order_shipping_line {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}
explore: order_tag {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}
explore: order_is_b2b {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}
explore: woh {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}
explore: woh_switchable {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}

explore: affiliate_daily_performance_us {
  join: affiliate_performance_measures {
    view_label: "Affiliate Metrics"
    relationship: one_to_one
    sql:   ;;
}
}
explore: ga_channel_performance_us {}
explore: ga_channel_performance_au {}

explore: ga_channel_us {
  join: ga_us_channel_measures {
    view_label: "Calculated Metrics"
    relationship: one_to_one
    sql:   ;;
}
}
explore: bing_daily_us {}
explore: cac_us {
  join: bing_daily_us {
    type: left_outer
    relationship: one_to_many
    sql_on: ${bing_daily_us.date_date} = ${cac_us.dategroup_date} ;;
    fields: [bing_daily_us.spend,bing_daily_us.revenue, bing_daily_us.conversions]
  }
}
explore: affiliate_publisher_performance {
  join: affiliate_publisher_measures {
    view_label: "Calculated Metrics"
    relationship: one_to_one
    sql:   ;;
}
}
explore: affiliate_performance_us_au {
  join: placement_payment {
    view_label: "Payment"
    relationship: one_to_one
    type: left_outer
    sql_on: ${affiliate_performance_us_au.market} = ${placement_payment.market} AND
      ${affiliate_performance_us_au.pub_id} = CAST(${placement_payment.pub_id} AS STRING) AND
      ${affiliate_performance_us_au.transaction_date} = ${placement_payment.payment_day_date}
      ;;
    fields: [placement_payment.placement_amount,placement_payment.placement_day]
  }
}

explore: affiliate_performance_us_au_test {
  from: affiliate_performance_us_au
  join: ga_affiliate_traffic_order_us {
    view_label: "GA Data US"
    relationship: many_to_one
    type: left_outer
    sql_on: ${affiliate_performance_us_au_test.market} = "us" AND
      ${affiliate_performance_us_au_test.transaction_raw} = ${ga_affiliate_traffic_order_us.date_raw}
      ;;
  }

# TODO:  Uncomment this once the base table for ga_affiliate_traffic_order_au.view exists.
  # join: ga_affiliate_traffic_order_au {
  #   view_label: "GA Data AU"
  #   relationship: many_to_one
  #   type: left_outer
  #   sql_on: ${affiliate_performance_us_au_test.market} = "au" AND
  #     ${affiliate_performance_us_au_test.transaction_raw} = ${ga_affiliate_traffic_order_au.date_raw}
  #     ;;
  # }

  # join: ga_affiliate_traffic_order_au_us {
  #   relationship: one_to_one
  #   sql:    ;;
  # }
}

explore: inventory_week_active {}
explore: inventory_snapshot_us {}
explore: affiliate_pub_placement_vs_non {
  join: placement_payment {
    view_label: "Payment"
    relationship: many_to_one
    type: left_outer
    sql_on: ${affiliate_pub_placement_vs_non.market} = ${placement_payment.market} AND
      ${affiliate_pub_placement_vs_non.pub_id} = CAST(${placement_payment.pub_id} AS STRING) AND
      ${affiliate_pub_placement_vs_non.transaction_date} = ${placement_payment.payment_day_date}
      ;;
    fields: [placement_payment.placement_amount,placement_payment.placement_day]
  }

}

explore: affiliate_pub_placement_vs_non_2 {
  join: ga_affiliate_traffic_order_us {
    view_label: "GA Data"
    relationship: one_to_one
    type: left_outer
    sql_on: ${affiliate_pub_placement_vs_non_2.market} = "us" AND
      ${affiliate_pub_placement_vs_non_2.transaction_date} = ${ga_affiliate_traffic_order_us.date_date}
      ;;
  }
}
explore: affiliate_pub_placement_vs_non_us {
  join: affiliate_final_measures {
    view_label: "Calculated Metrics"
    relationship: one_to_one
    sql:   ;;
}
}
explore: placement_payment {}
explore: inventory_snapshot_switchable {
  always_filter: { filters: [countries.country: "US"]}
  always_join: [countries]
  join: countries {
    relationship: one_to_one
    sql:    ;;
}
}


# include channel
explore: ga_affiliate_traffic_order_us {}
explore: ga_paid_social_traffic_order_us {}
