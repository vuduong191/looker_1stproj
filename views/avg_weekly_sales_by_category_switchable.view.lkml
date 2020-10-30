include: "./avg_weekly_sales_by_category.view"
view: avg_weekly_sales_by_category_switchable {
  extends: [avg_weekly_sales_by_category]
  sql_table_name: {% if _model._name == 'au' %}
    aerobic-datum-283623.looker_scratch.XT_au_avg_weekly_sales_by_category
  {% elsif countries.country._parameter_value == 'AU' %}
    aerobic-datum-283623.looker_scratch.XT_au_avg_weekly_sales_by_category
  {% else %}
    aerobic-datum-283623.looker_scratch.XT_us_avg_weekly_sales_by_category
  {% endif  %} ;;
}