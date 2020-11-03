include: "./woh.view"
view: woh_switchable {
  extends: [woh]
  sql_table_name: {% if _model._name == 'au' %}
    aerobic-datum-283623.looker_scratch.XT_au_woh
  {% elsif countries.country._parameter_value == 'AU' %}
    aerobic-datum-283623.looker_scratch.XT_au_woh
  {% else %}
    aerobic-datum-283623.looker_scratch.XT_us_woh
  {% endif  %} ;;
}
