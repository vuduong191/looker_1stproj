connection: "klaviyo"
include: "./shared_model_data.lkml"

explore: +order {                               hidden:yes }
explore: +customer {                            hidden:yes }
explore: +fivetran_audit {                      hidden:yes }
explore: +integration {                         hidden:yes }
explore: +order_line {                          hidden:yes }
explore: +inventory_level {                     hidden:yes }
explore: +product_variant {                     hidden:yes }
explore: +inventory_snapshot {                  hidden:yes }
explore: +avg_spent_by_state {                  hidden:yes }
explore: +avg_weekly_sales_2 {                  hidden:yes }
explore: +avg_weekly_sales_1 {                  hidden:yes }
explore: +order_shipping_line {                 hidden:yes }
explore: +order_tag {                           hidden:yes }
explore: +order_is_b2b {                        hidden:yes }
explore: +woh {                                 hidden:yes }
explore: +affiliate_daily_performance_us {      hidden:yes }
explore: +ga_channel_performance_us {           hidden:yes }
explore: +ga_channel_performance_au {           hidden:yes }
explore: +ga_channel_us {                       hidden:yes }
explore: +bing_daily_us {                       hidden:yes }
explore: +cac_us {                              hidden:yes }
explore: +affiliate_publisher_performance {     hidden:yes }
explore: +affiliate_performance_us_au {         hidden:yes }
explore: +inventory_week_active {               hidden:yes }
explore: +inventory_snapshot_us {               hidden:yes }
explore: +affiliate_pub_placement_vs_non {      hidden:yes }
explore: +affiliate_pub_placement_vs_non_2 {    hidden:yes }
explore: +affiliate_pub_placement_vs_non_us {   hidden:yes }
explore: +placement_payment {                   hidden:yes }
explore: +inventory_snapshot_switchable {       hidden:yes }
explore: +ga_affiliate_traffic_order_us {       hidden:yes }
explore: +ga_paid_social_traffic_order_us {     hidden:yes }
