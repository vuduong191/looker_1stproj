connection: "klaviyo"

# include all the views
include: "/views/**/*.view"

datagroup: test_vu_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
datagroup: daily_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
}

persist_with: test_vu_default_datagroup

explore: campaign {
  fields: [ALL_FIELDS*,-_fivetran_deleted]
  join: email_template {
    type: left_outer
    sql_on: ${campaign.email_template_id} = ${email_template.id} ;;
    relationship: many_to_one
  }
  join: campaign_list {
    type: left_outer
    sql_on: ${campaign_list.campaign_id} = ${campaign.id} ;;
    relationship: one_to_many
    fields: [campaign_list.list_id]
  }
}

explore: campaign_list {
  join: list {
    type: left_outer
    sql_on: ${campaign_list.list_id} = ${list.id} ;;
    relationship: many_to_one
  }

  join: campaign {
    type: left_outer
    sql_on: ${campaign_list.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }

  join: email_template {
    type: left_outer
    sql_on: ${campaign.email_template_id} = ${email_template.id} ;;
    relationship: many_to_one
  }
}

explore: order {}

explore: email_template {}
explore: customer {}
explore: event {
  join: flow {
    type: left_outer
    sql_on: ${event.flow_id} = ${flow.id} ;;
    relationship: many_to_one
  }

  join: campaign {
    type: left_outer
    sql_on: ${event.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${event.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: metric {
    type: left_outer
    sql_on: ${event.metric_id} = ${metric.id} ;;
    relationship: many_to_one
  }

  join: email_template {
    type: left_outer
    sql_on: ${campaign.email_template_id} = ${email_template.id} ;;
    relationship: many_to_one
  }

  join: integration {
    type: left_outer
    sql_on: ${metric.integration_id} = ${integration.id} ;;
    relationship: many_to_one
  }
}

explore: fivetran_audit {}

explore: flow {}

explore: integration {}

explore: list {}

explore: list_exclusion {
  join: list {
    type: left_outer
    sql_on: ${list_exclusion.list_id} = ${list.id} ;;
    relationship: many_to_one
  }
}

explore: metric {
  join: integration {
    type: left_outer
    sql_on: ${metric.integration_id} = ${integration.id} ;;
    relationship: many_to_one
  }
}
explore: order_line {
  join: order {
    type: left_outer
    relationship: many_to_one
    view_label: "Order"
    fields: [order.created_date, order.created_week, sum_of_sales, id, name, order.count]
    sql_on: ${order.id}=${order_line.order_id} ;;
  }
  join: order_tag {
    view_label: "Order Line"
    type: left_outer
    relationship: one_to_many
    sql_on: ${order_line.order_id} = ${order_tag.pk2_order_id} ;;
    fields: [value, marketing_tag_integer, sum_marketing_tag_integer]
  }
  join: order_is_marketing {
    view_label: "Order Line"
    type: left_outer
    relationship: one_to_one
    sql_on: ${order_line.id} = ${order_is_marketing.id} ;;
  }
  join: product {
    view_label: "Order Line"
    relationship: many_to_one
    sql_on: ${order_line.product_id}=${product.id} ;;
  }
  join: inventory_week_active {
    relationship: many_to_one
    sql_on: ${order.created_week} = ${inventory_week_active.snapshot_week}
    AND ${order_line.sku} = ${inventory_week_active.sku};;
  }
  join: customer {
    relationship: many_to_one
    sql_on: ${customer.id} = ${order.customer_id} ;;
    fields: [id, count, first_name, last_name, created_date, created_month, tax_exempt, verified_email,
      state, orders_count, accepts_marketing, percent_returning, is_returning_customer, average_actual_ltv]
  }
  join: order_customer_dimensions {
    view_label: "Order"
    relationship: one_to_one
    sql:   ;;
  }
  join: first_order_product_types {
    relationship: many_to_one
    view_label: "Customer"
    sql_on: ${first_order_product_types.customer_id} = ${order.customer_id} ;;
  }
}
explore: person {}
explore: inventory_level {
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
  join: vu_product_data_us {
    type: left_outer
    view_label: "Manual Data"
    relationship: many_to_one
    sql_on: ${product_variant.sku}=${vu_product_data_us.product_variant_sku} ;;
  }
}
explore: inventory_insert {
  hidden: yes
}
explore: inventory_insert_native {
  hidden: yes
}
explore: inventory_snapshot {
  join: product_variant {
    relationship: many_to_one
    sql_on: ${inventory_snapshot.inventory_item_id} = ${product_variant.inventory_item_id} ;;
  }
  join: product {
    relationship: many_to_one
    sql_on: ${product_variant.product_id} = ${product.id} ;;
  }
}
explore: avg_spent_by_state {}
