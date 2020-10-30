- dashboard: product_stock_health__us
  title: Product Stock Health - US
  layout: newspaper
  refresh: 1 day
  elements:
  - title: Tier 1 - Top 10
    name: Tier 1 - Top 10
    model: us
    explore: woh
    type: looker_column
    fields: [woh.woh_tier, woh.count_sku]
    fill_fields: [woh.woh_tier]
    filters:
      woh.rank_group_l12w: 0 to 10
    sorts: [woh.woh_tier]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    refresh: 1 day
    listen: {}
    row: 0
    col: 6
    width: 6
    height: 6
  - title: 2nd Tier [11-30]
    name: 2nd Tier [11-30]
    model: us
    explore: woh
    type: looker_column
    fields: [woh.woh_tier, woh.count_sku]
    fill_fields: [woh.woh_tier]
    filters:
      woh.rank_group_l12w: 11 to 30
    sorts: [woh.woh_tier]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    refresh: 1 day
    listen: {}
    row: 0
    col: 12
    width: 6
    height: 6
  - title: 3rd Tier [31-100]
    name: 3rd Tier [31-100]
    model: us
    explore: woh
    type: looker_column
    fields: [woh.woh_tier, woh.count_sku]
    fill_fields: [woh.woh_tier]
    filters:
      woh.rank_group_l12w: 31 to 100
    sorts: [woh.woh_tier]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    refresh: 1 day
    listen: {}
    row: 6
    col: 6
    width: 6
    height: 6
  - title: Bot Tier [101, inf]
    name: Bot Tier [101, inf]
    model: us
    explore: woh
    type: looker_column
    fields: [woh.woh_tier, woh.count_sku]
    fill_fields: [woh.woh_tier]
    filters:
      woh.rank_group_l12w: 101 or Above
    sorts: [woh.woh_tier]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    refresh: 1 day
    listen: {}
    row: 6
    col: 12
    width: 6
    height: 6
  - title: Tier 1 - Top 10 Data
    name: Tier 1 - Top 10 Data
    model: us
    explore: woh
    type: looker_grid
    fields: [woh.sku, woh.product, woh.color, woh.material, woh.size, woh.avg_weekly_units_sold,
      woh.avg_weekly_sales, woh.woh, woh.active_week_count]
    filters:
      woh.rank_group_l12w: 0 to 10
    sorts: [woh.avg_weekly_sales desc]
    limit: 500
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
      woh.avg_weekly_units_sold:
        is_active: true
        palette:
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
        value_display: true
      woh.woh:
        is_active: true
        value_display: true
      woh.avg_weekly_sales:
        is_active: true
    series_value_format:
      woh.woh:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
      woh.avg_weekly_units_sold:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
      woh.avg_weekly_sales:
        name: decimal_2
        format_string: "#,##0.00"
        label: Decimals (2)
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    defaults_version: 1
    refresh: 1 hour
    listen: {}
    row: 12
    col: 0
    width: 24
    height: 6
  - name: Note
    type: text
    title_text: Note
    body_text: |-
      - Data Source: Shopify
      - Only online orders are counted
      - Marketing orders, B2B orders, and orders made from draft orders are excluded
      - The main metric here is Weeks on Hand (woh)
      - Product Tier and Avg Weekly Sales is updated weekly
      - Inventory quantity and WOH are updated daily
      - Only weeks without stockouts in the last 12 weeks are taken into the calculation of weekly average sales. I call these "Active Weeks"
      - Tiers are defined by Sales value, not sales unit
      - For some SKUs with low active week count, extra consideration is needed
    row: 0
    col: 0
    width: 6
    height: 6
  - title: 2nd Tier [11-30] Data
    name: 2nd Tier [11-30] Data
    model: us
    explore: woh
    type: looker_grid
    fields: [woh.sku, woh.product, woh.color, woh.material, woh.size, woh.avg_weekly_units_sold,
      woh.avg_weekly_sales, woh.woh, woh.active_week_count]
    filters:
      woh.rank_group_l12w: 11 to 30
    sorts: [woh.avg_weekly_sales desc]
    limit: 500
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
      woh.avg_weekly_units_sold:
        is_active: true
        palette:
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
        value_display: true
      woh.woh:
        is_active: true
        value_display: true
      woh.avg_weekly_sales:
        is_active: true
    series_value_format:
      woh.woh:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
      woh.avg_weekly_units_sold:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
      woh.avg_weekly_sales:
        name: decimal_2
        format_string: "#,##0.00"
        label: Decimals (2)
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    defaults_version: 1
    refresh: 1 hour
    listen: {}
    row: 18
    col: 0
    width: 24
    height: 10
  - title: 3rd Tier [31-100] 38m ago
    name: 3rd Tier [31-100] 38m ago
    model: us
    explore: woh
    type: looker_grid
    fields: [woh.sku, woh.product, woh.color, woh.material, woh.size, woh.avg_weekly_units_sold,
      woh.avg_weekly_sales, woh.woh, woh.active_week_count]
    filters:
      woh.rank_group_l12w: 31 to 100
    sorts: [woh.avg_weekly_sales desc]
    limit: 500
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
      woh.avg_weekly_units_sold:
        is_active: true
        palette:
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
        value_display: true
      woh.woh:
        is_active: true
        value_display: true
      woh.avg_weekly_sales:
        is_active: true
    series_value_format:
      woh.woh:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
      woh.avg_weekly_units_sold:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
      woh.avg_weekly_sales:
        name: decimal_2
        format_string: "#,##0.00"
        label: Decimals (2)
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    defaults_version: 1
    refresh: 1 hour
    listen: {}
    row: 28
    col: 0
    width: 24
    height: 10
  - title: Bot Tier [101, inf]
    name: Bot Tier [101, inf] (2)
    model: us
    explore: woh
    type: looker_grid
    fields: [woh.sku, woh.product, woh.color, woh.material, woh.size, woh.avg_weekly_units_sold,
      woh.woh, woh.active_week_count]
    filters:
      woh.rank_group_l12w: 101 or Above
    sorts: [woh.avg_weekly_units_sold desc]
    limit: 500
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
      woh.avg_weekly_units_sold:
        is_active: true
        palette:
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
        value_display: true
      woh.woh:
        is_active: true
        value_display: true
    series_value_format:
      woh.woh:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
      woh.avg_weekly_units_sold:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    defaults_version: 1
    refresh: 1 hour
    listen: {}
    row: 38
    col: 0
    width: 24
    height: 12