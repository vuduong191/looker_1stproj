- dashboard: pj_burndown
  title: Pj Burndown
  layout: newspaper
  tile_size: 100
  preferred_viewer: dashboards-next
  filters:

  - name: country_filter
    title: Country
    type: field_filter
    default_value: "US"
    allow_multiple_values: false
    required: true
    ui_config:
      type: button_toggles
      display: inline
      options:
      - US
      - AU
    explore: woh
    model: us
    field: countries.country
  elements:
  - name: pj_burndown_woh
    title: PJ Burndown
    model: us
    explore: woh
    type: looker_grid
    fields: [woh.category, woh.product, woh.color, woh.material, woh.sum_inventory,
      woh.sum_weekly_unit_sold, woh.size]
    pivots: [woh.size]
    listen:
      country_filter: countries.country
    filters:
      woh.category: '"Men''s Wear","Women''s wear"'
    sorts: [woh.size 0, woh.category, woh.product, woh.color]
    limit: 500
    dynamic_fields:
    - table_calculation: woh
      label: WOH
      expression: "${woh.sum_inventory}/${woh.sum_weekly_unit_sold}"
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      woh.sum_inventory:
        is_active: false
      woh:
        is_active: true
    series_value_format:
      woh:
        name: decimal_1
        format_string: "#,##0.0"
        label: Decimals (1)
    defaults_version: 1
    hidden_fields: [woh.sum_weekly_unit_sold]
    row: 0
    col: 0
    width: 24
    height: 12
