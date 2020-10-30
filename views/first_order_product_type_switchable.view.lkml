include: "./first_order_product_types.view"
view: first_order_product_type_switchable {
  extends: [first_order_product_types]
  sql_table_name: {% if _model._name == 'au' %}
    aerobic-datum-283623.looker_scratch.XT_au_first_order_product_types
  {% elsif countries.country._parameter_value == 'AU' %}
    aerobic-datum-283623.looker_scratch.XT_au_first_order_product_types
  {% else %}
    aerobic-datum-283623.looker_scratch.XT_us_first_order_product_types
  {% endif  %} ;;
}
