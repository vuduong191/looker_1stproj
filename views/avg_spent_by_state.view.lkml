view: avg_spent_by_state {
#   derived_table: {
#     explore_source: customer {
#       column: state {}
#       column: sum_of_total_spent {}
#       bind_all_filters: yes
#     }
#   }
#   dimension: state {}
#   dimension: sum_of_total_spent {
#     value_format: "$#,##0.00"
#     type: number
#   }
#   measure: avg_spent {
#     type: average
#     sql: ${sum_of_total_spent} ;;
#   }
}
