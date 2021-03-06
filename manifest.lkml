# project_name: "ettitude_vu01"

# Shopify Schema
constant: schema {
  value: "{% if _model._name == 'au' %}aerobic-datum-283623.shopify_au{% elsif countries.country._parameter_value == 'AU' %}aerobic-datum-283623.shopify_au{% else %}aerobic-datum-283623.shopify{% endif  %}"
}

# Will work once the klaviyo Australian data is ready!
constant: klaviyo_schema {
  value: "{% if _model._name == 'au' %}klaviyo_au{% elsif countries.country._parameter_value == 'AU' %}klaviyo_au{% else %}klaviyo{% endif  %}"
}

# Inventory Snapshot Schema
constant: inventory_table {
  value: "{% if _model._name == 'au' %}inventory_snapshot_au{% elsif countries.country._parameter_value == 'AU' %}inventory_snapshot_au{% else %}inventory_snapshot_us{% endif  %}"
}

# For all
constant: country_code {
  value: "{% if _model._name == 'au' %}au{% elsif countries.country._parameter_value == 'AU' %}au{% else %}us{% endif  %}"
}
constant: au_tz {
  value: "Australia/Melbourne"
}
constant: us_tz {
  value: "America/Los_Angeles"
}
