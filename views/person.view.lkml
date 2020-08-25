view: person {
  sql_table_name: `klaviyo.person`
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

  dimension: address_1 {
    type: string
    sql: ${TABLE}.address_1 ;;
  }

  dimension: address_2 {
    type: string
    sql: ${TABLE}.address_2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: custom_accepts_marketing {
    type: string
    sql: ${TABLE}.custom_accepts_marketing ;;
  }

  dimension: custom_ad_text {
    type: string
    sql: ${TABLE}.custom_ad_text ;;
  }

  dimension: custom_address {
    type: string
    sql: ${TABLE}.custom_address ;;
  }

  dimension: custom_address_1 {
    type: string
    sql: ${TABLE}.custom_address_1 ;;
  }

  dimension: custom_address_2 {
    type: string
    sql: ${TABLE}.custom_address_2 ;;
  }

  dimension: custom_age {
    type: number
    sql: ${TABLE}.custom_age ;;
  }

  dimension: custom_backer_name {
    type: string
    sql: ${TABLE}.custom_backer_name ;;
  }

  dimension: custom_bedmate {
    type: string
    sql: ${TABLE}.custom_bedmate ;;
  }

  dimension: custom_birth_day {
    type: string
    sql: ${TABLE}.custom_birth_day ;;
  }

  dimension: custom_birthday {
    type: string
    sql: ${TABLE}.custom_birthday ;;
  }

  dimension: custom_campaign_id {
    type: string
    sql: ${TABLE}.custom_campaign_id ;;
  }

  dimension: custom_cc {
    type: string
    sql: ${TABLE}.custom_cc ;;
  }

  dimension: custom_cg_customization {
    type: string
    sql: ${TABLE}.custom_cg_customization ;;
  }

  dimension: custom_cg_delivery_date {
    type: string
    sql: ${TABLE}.custom_cg_delivery_date ;;
  }

  dimension: custom_cg_note {
    type: string
    sql: ${TABLE}.custom_cg_note ;;
  }

  dimension: custom_cg_products {
    type: string
    sql: ${TABLE}.custom_cg_products ;;
  }

  dimension: custom_cg_products_of_interest {
    type: string
    sql: ${TABLE}.custom_cg_products_of_interest ;;
  }

  dimension: custom_cg_quantity {
    type: number
    sql: ${TABLE}.custom_cg_quantity ;;
  }

  dimension: custom_checked_in {
    type: yesno
    sql: ${TABLE}.custom_checked_in ;;
  }

  dimension: custom_clicks {
    type: number
    sql: ${TABLE}.custom_clicks ;;
  }

  dimension: custom_cold {
    type: string
    sql: ${TABLE}.custom_cold ;;
  }

  dimension: custom_company_name {
    type: string
    sql: ${TABLE}.custom_company_name ;;
  }

  dimension: custom_confirm_ip {
    type: string
    sql: ${TABLE}.custom_confirm_ip ;;
  }

  dimension_group: custom_confirm {
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
    sql: ${TABLE}.custom_confirm_time ;;
  }

  dimension: custom_consent {
    type: string
    sql: ${TABLE}.custom_consent ;;
  }

  dimension: custom_consent_form_id {
    type: string
    sql: ${TABLE}.custom_consent_form_id ;;
  }

  dimension: custom_consent_form_version {
    type: number
    sql: ${TABLE}.custom_consent_form_version ;;
  }

  dimension: custom_consent_method {
    type: string
    sql: ${TABLE}.custom_consent_method ;;
  }

  dimension_group: custom_consent_timestamp {
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
    sql: ${TABLE}.custom_consent_timestamp ;;
  }

  dimension: custom_consent_version {
    type: string
    sql: ${TABLE}.custom_consent_version ;;
  }

  dimension: custom_country {
    type: string
    sql: ${TABLE}.custom_country ;;
  }

  dimension: custom_country_code {
    type: string
    sql: ${TABLE}.custom_country_code ;;
  }

  dimension: custom_coupon {
    type: string
    sql: ${TABLE}.custom_coupon ;;
  }

  dimension_group: custom_created {
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
    sql: ${TABLE}.custom_created_time ;;
  }

  dimension: custom_customer_id {
    type: string
    sql: ${TABLE}.custom_customer_id ;;
  }

  dimension: custom_data_added {
    type: string
    sql: ${TABLE}.custom_data_added ;;
  }

  dimension: custom_date_added {
    type: string
    sql: ${TABLE}.custom_date_added ;;
  }

  dimension: custom_date_joined {
    type: string
    sql: ${TABLE}.custom_date_joined ;;
  }

  dimension_group: custom_date {
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
    sql: ${TABLE}.custom_date_time ;;
  }

  dimension: custom_dstoff {
    type: string
    sql: ${TABLE}.custom_dstoff ;;
  }

  dimension: custom_element {
    type: string
    sql: ${TABLE}.custom_element ;;
  }

  dimension: custom_email {
    type: string
    sql: ${TABLE}.custom_email ;;
  }

  dimension: custom_email_content {
    type: string
    sql: ${TABLE}.custom_email_content ;;
  }

  dimension: custom_email_frequency {
    type: string
    sql: ${TABLE}.custom_email_frequency ;;
  }

  dimension: custom_email_opt_outs {
    type: string
    sql: ${TABLE}.custom_email_opt_outs ;;
  }

  dimension: custom_ettitude {
    type: number
    sql: ${TABLE}.custom_ettitude ;;
  }

  dimension: custom_euid {
    type: string
    sql: ${TABLE}.custom_euid ;;
  }

  dimension: custom_event_attendees_melbourne_ {
    type: string
    sql: ${TABLE}.custom_event_attendees_melbourne_ ;;
  }

  dimension: custom_expected_date_of_next_order {
    type: string
    sql: ${TABLE}.custom_expected_date_of_next_order ;;
  }

  dimension: custom_first_active {
    type: string
    sql: ${TABLE}.custom_first_active ;;
  }

  dimension: custom_form_id {
    type: string
    sql: ${TABLE}.custom_form_id ;;
  }

  dimension: custom_form_name {
    type: string
    sql: ${TABLE}.custom_form_name ;;
  }

  dimension: custom_frequency {
    type: string
    sql: ${TABLE}.custom_frequency ;;
  }

  dimension: custom_friendbuy_purl {
    type: string
    sql: ${TABLE}.custom_friendbuy_purl ;;
  }

  dimension: custom_friendbuy_source_widget_type {
    type: string
    sql: ${TABLE}.custom_friendbuy_source_widget_type ;;
  }

  dimension: custom_friendbuy_widget_id {
    type: number
    sql: ${TABLE}.custom_friendbuy_widget_id ;;
  }

  dimension: custom_friendbuy_widget_name {
    type: string
    sql: ${TABLE}.custom_friendbuy_widget_name ;;
  }

  dimension: custom_full_name {
    type: string
    sql: ${TABLE}.custom_full_name ;;
  }

  dimension: custom_gender {
    type: string
    sql: ${TABLE}.custom_gender ;;
  }

  dimension: custom_gmtoff {
    type: string
    sql: ${TABLE}.custom_gmtoff ;;
  }

  dimension: custom_heat {
    type: string
    sql: ${TABLE}.custom_heat ;;
  }

  dimension: custom_indiegogo_backers_2016 {
    type: string
    sql: ${TABLE}.custom_indiegogo_backers_2016 ;;
  }

  dimension: custom_initial_referring_domain {
    type: string
    sql: ${TABLE}.custom_initial_referring_domain ;;
  }

  dimension: custom_initial_source {
    type: string
    sql: ${TABLE}.custom_initial_source ;;
  }

  dimension: custom_instapage_sign_up {
    type: string
    sql: ${TABLE}.custom_instapage_sign_up ;;
  }

  dimension: custom_kickstarter_backers_2016 {
    type: string
    sql: ${TABLE}.custom_kickstarter_backers_2016 ;;
  }

  dimension_group: custom_last_action {
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
    sql: ${TABLE}.custom_last_action ;;
  }

  dimension: custom_last_active {
    type: string
    sql: ${TABLE}.custom_last_active ;;
  }

  dimension_group: custom_last_changed {
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
    sql: ${TABLE}.custom_last_changed ;;
  }

  dimension: custom_last_order_date {
    type: string
    sql: ${TABLE}.custom_last_order_date ;;
  }

  dimension: custom_latitude {
    type: string
    sql: ${TABLE}.custom_latitude ;;
  }

  dimension: custom_leid {
    type: number
    value_format_name: id
    sql: ${TABLE}.custom_leid ;;
  }

  dimension: custom_light {
    type: string
    sql: ${TABLE}.custom_light ;;
  }

  dimension: custom_list {
    type: string
    sql: ${TABLE}.custom_list ;;
  }

  dimension: custom_longitude {
    type: string
    sql: ${TABLE}.custom_longitude ;;
  }

  dimension: custom_mail_chimp_rating {
    type: number
    sql: ${TABLE}.custom_mail_chimp_rating ;;
  }

  dimension: custom_member_rating {
    type: number
    sql: ${TABLE}.custom_member_rating ;;
  }

  dimension: custom_method_id {
    type: string
    sql: ${TABLE}.custom_method_id ;;
  }

  dimension: custom_method_type {
    type: string
    sql: ${TABLE}.custom_method_type ;;
  }

  dimension: custom_name {
    type: string
    sql: ${TABLE}.custom_name ;;
  }

  dimension: custom_note {
    type: string
    sql: ${TABLE}.custom_note ;;
  }

  dimension: custom_object {
    type: string
    sql: ${TABLE}.custom_object ;;
  }

  dimension: custom_octane_gender {
    type: string
    sql: ${TABLE}.custom_octane_gender ;;
  }

  dimension: custom_octane_list_all_subscribers {
    type: string
    sql: ${TABLE}.custom_octane_list_all_subscribers ;;
  }

  dimension: custom_octane_list_completed_an_order_at_least_365_days_ago {
    type: string
    sql: ${TABLE}.custom_octane_list_completed_an_order_at_least_365_days_ago ;;
  }

  dimension: custom_octane_list_completed_at_least_1_order {
    type: string
    sql: ${TABLE}.custom_octane_list_completed_at_least_1_order ;;
  }

  dimension: custom_octane_list_most_recent_order_is_at_least_210_days_ago {
    type: string
    sql: ${TABLE}.custom_octane_list_most_recent_order_is_at_least_210_days_ago ;;
  }

  dimension: custom_octane_list_subscribers_with_email {
    type: string
    sql: ${TABLE}.custom_octane_list_subscribers_with_email ;;
  }

  dimension: custom_opens {
    type: number
    sql: ${TABLE}.custom_opens ;;
  }

  dimension: custom_optin_ip {
    type: string
    sql: ${TABLE}.custom_optin_ip ;;
  }

  dimension_group: custom_optin {
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
    sql: ${TABLE}.custom_optin_time ;;
  }

  dimension: custom_order_date {
    type: string
    sql: ${TABLE}.custom_order_date ;;
  }

  dimension: custom_order_id {
    type: number
    sql: ${TABLE}.custom_order_id ;;
  }

  dimension: custom_order_total_inc_tax_ {
    type: number
    sql: ${TABLE}.custom_order_total_inc_tax_ ;;
  }

  dimension: custom_pozible_cloudland_supporters {
    type: string
    sql: ${TABLE}.custom_pozible_cloudland_supporters ;;
  }

  dimension: custom_product_category {
    type: string
    sql: ${TABLE}.custom_product_category ;;
  }

  dimension: custom_profile_created_on {
    type: string
    sql: ${TABLE}.custom_profile_created_on ;;
  }

  dimension: custom_promo_id {
    type: number
    sql: ${TABLE}.custom_promo_id ;;
  }

  dimension: custom_province {
    type: string
    sql: ${TABLE}.custom_province ;;
  }

  dimension: custom_province_code {
    type: string
    sql: ${TABLE}.custom_province_code ;;
  }

  dimension: custom_q_1 {
    type: string
    sql: ${TABLE}.custom_q_1 ;;
  }

  dimension: custom_q_2 {
    type: string
    sql: ${TABLE}.custom_q_2 ;;
  }

  dimension: custom_q_3 {
    type: string
    sql: ${TABLE}.custom_q_3 ;;
  }

  dimension: custom_q_4 {
    type: string
    sql: ${TABLE}.custom_q_4 ;;
  }

  dimension: custom_q_5 {
    type: string
    sql: ${TABLE}.custom_q_5 ;;
  }

  dimension: custom_quantity_requested {
    type: number
    sql: ${TABLE}.custom_quantity_requested ;;
  }

  dimension: custom_search_engine {
    type: string
    sql: ${TABLE}.custom_search_engine ;;
  }

  dimension: custom_search_keyword {
    type: string
    sql: ${TABLE}.custom_search_keyword ;;
  }

  dimension: custom_shipping_address {
    type: string
    sql: ${TABLE}.custom_shipping_address ;;
  }

  dimension: custom_shipping_address_1 {
    type: string
    sql: ${TABLE}.custom_shipping_address_1 ;;
  }

  dimension: custom_shipping_address_2 {
    type: string
    sql: ${TABLE}.custom_shipping_address_2 ;;
  }

  dimension: custom_shipping_city {
    type: string
    sql: ${TABLE}.custom_shipping_city ;;
  }

  dimension: custom_shipping_country {
    type: string
    sql: ${TABLE}.custom_shipping_country ;;
  }

  dimension: custom_shipping_country_name {
    type: string
    sql: ${TABLE}.custom_shipping_country_name ;;
  }

  dimension: custom_shipping_name {
    type: string
    sql: ${TABLE}.custom_shipping_name ;;
  }

  dimension: custom_shipping_postal_code {
    type: string
    sql: ${TABLE}.custom_shipping_postal_code ;;
  }

  dimension: custom_shipping_state {
    type: string
    sql: ${TABLE}.custom_shipping_state ;;
  }

  dimension: custom_shipping_state_province {
    type: string
    sql: ${TABLE}.custom_shipping_state_province ;;
  }

  dimension: custom_shipping_zip_postal_code {
    type: string
    sql: ${TABLE}.custom_shipping_zip_postal_code ;;
  }

  dimension: custom_shopify_tags {
    type: string
    sql: ${TABLE}.custom_shopify_tags ;;
  }

  dimension: custom_sign_up_for_exclusive_offers_get_a_10_ettitude {
    type: string
    sql: ${TABLE}.custom_sign_up_for_exclusive_offers_get_a_10_ettitude ;;
  }

  dimension: custom_signed_up_from {
    type: string
    sql: ${TABLE}.custom_signed_up_from ;;
  }

  dimension: custom_signup_from_blog {
    type: string
    sql: ${TABLE}.custom_signup_from_blog ;;
  }

  dimension: custom_signup_from_shopping_site {
    type: string
    sql: ${TABLE}.custom_signup_from_shopping_site ;;
  }

  dimension: custom_sms_attentive_signup {
    type: yesno
    sql: ${TABLE}.custom_sms_attentive_signup ;;
  }

  dimension: custom_source {
    type: string
    sql: ${TABLE}.custom_source ;;
  }

  dimension: custom_state_province {
    type: string
    sql: ${TABLE}.custom_state_province ;;
  }

  dimension: custom_street_address {
    type: string
    sql: ${TABLE}.custom_street_address ;;
  }

  dimension: custom_stress {
    type: string
    sql: ${TABLE}.custom_stress ;;
  }

  dimension: custom_student {
    type: string
    sql: ${TABLE}.custom_student ;;
  }

  dimension: custom_student_email {
    type: string
    sql: ${TABLE}.custom_student_email ;;
  }

  dimension: custom_subscribed_count {
    type: number
    sql: ${TABLE}.custom_subscribed_count ;;
  }

  dimension: custom_subscriber {
    type: string
    sql: ${TABLE}.custom_subscriber ;;
  }

  dimension: custom_suppress {
    type: yesno
    sql: ${TABLE}.custom_suppress ;;
  }

  dimension: custom_tags {
    type: string
    sql: ${TABLE}.custom_tags ;;
  }

  dimension: custom_tax_exempt {
    type: string
    sql: ${TABLE}.custom_tax_exempt ;;
  }

  dimension: custom_test_id {
    type: number
    sql: ${TABLE}.custom_test_id ;;
  }

  dimension: custom_time_stamp {
    type: string
    sql: ${TABLE}.custom_time_stamp ;;
  }

  dimension: custom_timezone {
    type: string
    sql: ${TABLE}.custom_timezone ;;
  }

  dimension: custom_total_orders {
    type: number
    sql: ${TABLE}.custom_total_orders ;;
  }

  dimension: custom_total_spent {
    type: number
    sql: ${TABLE}.custom_total_spent ;;
  }

  dimension: custom_unique_id {
    type: string
    sql: ${TABLE}.custom_unique_id ;;
  }

  dimension: custom_utm_campaign {
    type: string
    sql: ${TABLE}.custom_utm_campaign ;;
  }

  dimension: custom_utm_content {
    type: string
    sql: ${TABLE}.custom_utm_content ;;
  }

  dimension: custom_utm_medium {
    type: string
    sql: ${TABLE}.custom_utm_medium ;;
  }

  dimension: custom_utm_source {
    type: string
    sql: ${TABLE}.custom_utm_source ;;
  }

  dimension: custom_utm_term {
    type: string
    sql: ${TABLE}.custom_utm_term ;;
  }

  dimension: custom_vip_group {
    type: string
    sql: ${TABLE}.custom_vip_group ;;
  }

  dimension: custom_yotpo_crf_age {
    type: string
    sql: ${TABLE}.custom_yotpo_crf_age ;;
  }

  dimension: custom_yotpo_crf_color {
    type: number
    sql: ${TABLE}.custom_yotpo_crf_color ;;
  }

  dimension: custom_yotpo_crf_fabric_softness {
    type: number
    sql: ${TABLE}.custom_yotpo_crf_fabric_softness ;;
  }

  dimension: custom_yotpo_crf_size_fit {
    type: number
    sql: ${TABLE}.custom_yotpo_crf_size_fit ;;
  }

  dimension: custom_yotpo_crf_would_you_recommend {
    type: number
    sql: ${TABLE}.custom_yotpo_crf_would_you_recommend ;;
  }

  dimension: custom_yotpo_last_email_sent {
    type: string
    sql: ${TABLE}.custom_yotpo_last_email_sent ;;
  }

  dimension: custom_yotpo_latest_review_score {
    type: number
    sql: ${TABLE}.custom_yotpo_latest_review_score ;;
  }

  dimension: custom_yotpo_number_of_reviews {
    type: number
    sql: ${TABLE}.custom_yotpo_number_of_reviews ;;
  }

  dimension: custom_zip_postcode {
    type: string
    sql: ${TABLE}.custom_zip_postcode ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.organization ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      custom_shipping_name,
      last_name,
      custom_company_name,
      custom_full_name,
      custom_name,
      custom_shipping_country_name,
      custom_friendbuy_widget_name,
      first_name,
      custom_backer_name,
      custom_form_name,
      event.count
    ]
  }
}
