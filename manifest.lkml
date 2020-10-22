# project_name: "ettitude_vu01"

# Shopify Schema
constant: schema {
  value: "{% if countries.country._parameter_value == 'AU' %}aerobic-datum-283623.shopify_au{% else %}aerobic-datum-283623.shopify{% endif  %}"
}

# Will work once the klaviyo Australian data is ready!
constant: klaviyo_schema {
  value: "{% if countries.country._parameter_value == 'AU' %}klaviyo_au{% else %}klaviyo{% endif  %}"
}
