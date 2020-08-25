view: event {
  sql_table_name: `klaviyo.event`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

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

  dimension: _variation {
    type: string
    sql: ${TABLE}._variation ;;
  }

  dimension: campaign_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension_group: datetime {
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
    sql: ${TABLE}.datetime ;;
  }

  dimension: flow_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.flow_id ;;
  }

  dimension: flow_message_id {
    type: string
    sql: ${TABLE}.flow_message_id ;;
  }

  dimension: metric_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.metric_id ;;
  }

  dimension: person_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: property_ad_group_id {
    type: number
    sql: ${TABLE}.property_ad_group_id ;;
  }

  dimension: property_ad_id {
    type: number
    sql: ${TABLE}.property_ad_id ;;
  }

  dimension: property_ad_name {
    type: string
    sql: ${TABLE}.property_ad_name ;;
  }

  dimension: property_adset_name {
    type: string
    sql: ${TABLE}.property_adset_name ;;
  }

  dimension: property_attribute_bundle_id {
    type: string
    sql: ${TABLE}.property_attribute_bundle_id ;;
  }

  dimension: property_attribute_bundle_image {
    type: string
    sql: ${TABLE}.property_attribute_bundle_image ;;
  }

  dimension: property_attribute_bundle_url {
    type: string
    sql: ${TABLE}.property_attribute_bundle_url ;;
  }

  dimension: property_attribute_complete_bundle {
    type: number
    sql: ${TABLE}.property_attribute_complete_bundle ;;
  }

  dimension: property_attribute_discount {
    type: number
    sql: ${TABLE}.property_attribute_discount ;;
  }

  dimension: property_attribute_discount_bundle {
    type: yesno
    sql: ${TABLE}.property_attribute_discount_bundle ;;
  }

  dimension: property_attribute_discount_name {
    type: string
    sql: ${TABLE}.property_attribute_discount_name ;;
  }

  dimension: property_attribute_discount_type {
    type: string
    sql: ${TABLE}.property_attribute_discount_type ;;
  }

  dimension: property_attribute_pre_ordered_items {
    type: number
    sql: ${TABLE}.property_attribute_pre_ordered_items ;;
  }

  dimension: property_attribute_products {
    type: string
    sql: ${TABLE}.property_attribute_products ;;
  }

  dimension: property_attribute_shipping_from_august_10_th {
    type: number
    sql: ${TABLE}.property_attribute_shipping_from_august_10_th ;;
  }

  dimension: property_attribute_shipping_from_july_20_th {
    type: number
    sql: ${TABLE}.property_attribute_shipping_from_july_20_th ;;
  }

  dimension: property_attribute_shipping_from_july_31_st {
    type: number
    sql: ${TABLE}.property_attribute_shipping_from_july_31_st ;;
  }

  dimension: property_attribute_ships_from_august_10_th {
    type: number
    sql: ${TABLE}.property_attribute_ships_from_august_10_th ;;
  }

  dimension: property_attribute_ships_from_august_25_th {
    type: number
    sql: ${TABLE}.property_attribute_ships_from_august_25_th ;;
  }

  dimension: property_attribute_ships_from_july_20_th {
    type: number
    sql: ${TABLE}.property_attribute_ships_from_july_20_th ;;
  }

  dimension: property_attribute_ships_from_july_31_st {
    type: number
    sql: ${TABLE}.property_attribute_ships_from_july_31_st ;;
  }

  dimension: property_bounce_type {
    type: string
    sql: ${TABLE}.property_bounce_type ;;
  }

  dimension: property_brand {
    type: string
    sql: ${TABLE}.property_brand ;;
  }

  dimension: property_browser {
    type: string
    sql: ${TABLE}.property_browser ;;
  }

  dimension: property_campaign_name {
    type: string
    sql: ${TABLE}.property_campaign_name ;;
  }

  dimension: property_categories {
    type: string
    sql: ${TABLE}.property_categories ;;
  }

  dimension: property_client_canonical {
    type: string
    sql: ${TABLE}.property_client_canonical ;;
  }

  dimension: property_client_name {
    type: string
    sql: ${TABLE}.property_client_name ;;
  }

  dimension: property_client_os {
    type: string
    sql: ${TABLE}.property_client_os ;;
  }

  dimension: property_client_os_family {
    type: string
    sql: ${TABLE}.property_client_os_family ;;
  }

  dimension: property_client_type {
    type: string
    sql: ${TABLE}.property_client_type ;;
  }

  dimension: property_cohort_message_send_cohort {
    type: string
    sql: ${TABLE}.property_cohort_message_send_cohort ;;
  }

  dimension: property_cohort_variation_send_cohort {
    type: string
    sql: ${TABLE}.property_cohort_variation_send_cohort ;;
  }

  dimension: property_collections {
    type: string
    sql: ${TABLE}.property_collections ;;
  }

  dimension: property_compare_at_price {
    type: string
    sql: ${TABLE}.property_compare_at_price ;;
  }

  dimension: property_discount_codes {
    type: string
    sql: ${TABLE}.property_discount_codes ;;
  }

  dimension: property_email_domain {
    type: string
    sql: ${TABLE}.property_email_domain ;;
  }

  dimension: property_event_id {
    type: string
    sql: ${TABLE}.property_event_id ;;
  }

  dimension: property_event_name {
    type: string
    sql: ${TABLE}.property_event_name ;;
  }

  dimension: property_extra {
    type: string
    sql: ${TABLE}.property_extra ;;
  }

  dimension: property_form_name {
    type: string
    sql: ${TABLE}.property_form_name ;;
  }

  dimension: property_fulfillment_hours {
    type: number
    sql: ${TABLE}.property_fulfillment_hours ;;
  }

  dimension: property_fulfillment_status {
    type: string
    sql: ${TABLE}.property_fulfillment_status ;;
  }

  dimension: property_image_url {
    type: string
    sql: ${TABLE}.property_image_url ;;
  }

  dimension: property_is_organic {
    type: yesno
    sql: ${TABLE}.property_is_organic ;;
  }

  dimension: property_is_session_activity {
    type: yesno
    sql: ${TABLE}.property_is_session_activity ;;
  }

  dimension: property_item_count {
    type: number
    sql: ${TABLE}.property_item_count ;;
  }

  dimension: property_items {
    type: string
    sql: ${TABLE}.property_items ;;
  }

  dimension: property_list {
    type: string
    sql: ${TABLE}.property_list ;;
  }

  dimension: property_message_interaction {
    type: string
    sql: ${TABLE}.property_message_interaction ;;
  }

  dimension: property_method {
    type: string
    sql: ${TABLE}.property_method ;;
  }

  dimension: property_name {
    type: string
    sql: ${TABLE}.property_name ;;
  }

  dimension: property_os {
    type: string
    sql: ${TABLE}.property_os ;;
  }

  dimension: property_page {
    type: string
    sql: ${TABLE}.property_page ;;
  }

  dimension: property_page_name {
    type: string
    sql: ${TABLE}.property_page_name ;;
  }

  dimension: property_platform {
    type: string
    sql: ${TABLE}.property_platform ;;
  }

  dimension: property_price {
    type: string
    sql: ${TABLE}.property_price ;;
  }

  dimension: property_product_id {
    type: number
    sql: ${TABLE}.property_product_id ;;
  }

  dimension: property_promo_id {
    type: number
    sql: ${TABLE}.property_promo_id ;;
  }

  dimension: property_promo_title {
    type: string
    sql: ${TABLE}.property_promo_title ;;
  }

  dimension: property_quantity {
    type: number
    sql: ${TABLE}.property_quantity ;;
  }

  dimension: property_session_end {
    type: number
    sql: ${TABLE}.property_session_end ;;
  }

  dimension: property_shipping_rate {
    type: string
    sql: ${TABLE}.property_shipping_rate ;;
  }

  dimension: property_sku {
    type: string
    sql: ${TABLE}.property_sku ;;
  }

  dimension: property_source_name {
    type: string
    sql: ${TABLE}.property_source_name ;;
  }

  dimension: property_subject {
    type: string
    sql: ${TABLE}.property_subject ;;
  }

  dimension: property_tags {
    type: string
    sql: ${TABLE}.property_tags ;;
  }

  dimension: property_ticket_type {
    type: string
    sql: ${TABLE}.property_ticket_type ;;
  }

  dimension: property_total_discounts {
    type: number
    sql: ${TABLE}.property_total_discounts ;;
  }

  dimension: property_url {
    type: string
    sql: ${TABLE}.property_url ;;
  }

  dimension: property_value {
    type: number
    sql: ${TABLE}.property_value ;;
  }

  dimension: property_variant_name {
    type: string
    sql: ${TABLE}.property_variant_name ;;
  }

  dimension: property_variant_option_amount {
    type: string
    sql: ${TABLE}.property_variant_option_amount ;;
  }

  dimension: property_variant_option_color {
    type: string
    sql: ${TABLE}.property_variant_option_color ;;
  }

  dimension: property_variant_option_colour {
    type: string
    sql: ${TABLE}.property_variant_option_colour ;;
  }

  dimension: property_variant_option_density {
    type: string
    sql: ${TABLE}.property_variant_option_density ;;
  }

  dimension: property_variant_option_material {
    type: string
    sql: ${TABLE}.property_variant_option_material ;;
  }

  dimension: property_variant_option_size {
    type: string
    sql: ${TABLE}.property_variant_option_size ;;
  }

  dimension: property_variant_option_title {
    type: string
    sql: ${TABLE}.property_variant_option_title ;;
  }

  dimension: property_vendor {
    type: string
    sql: ${TABLE}.property_vendor ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      property_source_name,
      property_name,
      property_event_name,
      property_page_name,
      property_attribute_discount_name,
      property_ad_name,
      property_variant_name,
      property_campaign_name,
      property_client_name,
      property_adset_name,
      property_form_name,
      flow.name,
      flow.id,
      campaign.from_name,
      campaign.name,
      campaign.id,
      person.id,
      person.custom_created_time,
      person.custom_shipping_name,
      person.last_name,
      person.custom_company_name,
      person.custom_full_name,
      person.custom_name,
      person.custom_shipping_country_name,
      person.custom_friendbuy_widget_name,
      person.first_name,
      person.custom_backer_name,
      person.custom_form_name,
      metric.name,
      metric.id
    ]
  }
}
