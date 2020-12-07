- dashboard: marketing_channel_us
  title: Marketing Channel Us
  layout: newspaper
  tile_size: 100
  filters:
  - name: date
    title: 'Date Range'
    type: date_filter
    default_value: 2 months

  - name: date_aggregation
    type: field_filter
    model: us
    explore: ga_channel_us
    field: ga_channel_us.timeframe_picker
    default_value: "Week"

  - name: major_channel_only
    type: field_filter
    model: us
    explore: ga_channel_us
    field: ga_channel_us.major_channel
    default_value: "Yes"

  elements:
  - name: traffic_channel_type
    title: Traffic - Paid vs Non-Paid
    model: us
    explore: ga_channel_us
    type: looker_line
    fields: [ga_channel_us.dynamic_timeframe, ga_channel_us.sessions, ga_channel_us.channel_type]
    pivots: [ga_channel_us.channel_type]
    listen:
      date_aggregation: ga_channel_us.timeframe_picker
      date: ga_channel_us.date_date
      major_channel_only: ga_channel_us.major_channel
    filters:

    sorts: [ga_channel_us.dynamic_timeframe, ga_channel_us.channel_type]
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 0
    col: 0
    width: 12
  - name: conversion_rate_us
    title: Conversion Rate - Paid vs Non-Paid
    model: us
    explore: ga_channel_us
    type: looker_line
    fields: [ga_channel_us.dynamic_timeframe, ga_channel_us.channel_type, ga_us_channel_measures.conversion_rate]
    pivots: [ga_channel_us.channel_type]
    listen:
      date_aggregation: ga_channel_us.timeframe_picker
      date: ga_channel_us.date_date
      major_channel_only: ga_channel_us.major_channel
    filters:

    sorts: [ga_channel_us.dynamic_timeframe, ga_channel_us.channel_type]
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_channel_us.sessions,
            id: non-paid - ga_channel_us.sessions, name: non-paid - Ga Channel Us Sessions},
          {axisId: ga_channel_us.sessions, id: paid - ga_channel_us.sessions, name: paid
              - Ga Channel Us Sessions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: ga_us_channel_measures.conversion_rate,
            id: non-paid - ga_us_channel_measures.conversion_rate, name: non-paid -
              Calculated Metrics Conversion Rate}, {axisId: ga_us_channel_measures.conversion_rate,
            id: paid - ga_us_channel_measures.conversion_rate, name: paid - Calculated
              Metrics Conversion Rate}], showLabels: true, showValues: true, maxValue: !!null '',
        minValue: !!null '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      non-paid - ga_us_channel_measures.conversion_rate: "#3EB0D5"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 0
    col: 12
    width: 12

  - name: traffic_us
    title: Traffic
    model: us
    explore: ga_channel_us
    type: looker_line
    fields: [ga_channel_us.dynamic_timeframe, ga_channel_us.channel_grouping, ga_channel_us.sessions]
    pivots: [ga_channel_us.channel_grouping]
    listen:
      date_aggregation: ga_channel_us.timeframe_picker
      date: ga_channel_us.date_date
      major_channel_only: ga_channel_us.major_channel
    filters:
      # ga_channel_us.timeframe_picker: Month
      # ga_channel_us.major_channel: 'Yes'
    sorts: [ga_channel_us.channel_grouping 0, ga_channel_us.dynamic_timeframe]
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 9
    col: 0
    width: 16
  - name: traffic_channel_pie
    title: Traffic Contribution
    model: us
    explore: ga_channel_us
    type: looker_pie
    fields: [ga_channel_us.sessions, ga_channel_us.channel_grouping]
    listen:
      date_aggregation: ga_channel_us.timeframe_picker
      date: ga_channel_us.date_date
      major_channel_only: ga_channel_us.major_channel
    filters:

    sorts: [ga_channel_us.sessions desc]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_channel_us.sessions,
            id: non-paid - ga_channel_us.sessions, name: non-paid - Ga Channel Us Sessions},
          {axisId: ga_channel_us.sessions, id: paid - ga_channel_us.sessions, name: paid
              - Ga Channel Us Sessions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: ga_us_channel_measures.conversion_rate,
            id: non-paid - ga_us_channel_measures.conversion_rate, name: non-paid -
              Calculated Metrics Conversion Rate}, {axisId: ga_us_channel_measures.conversion_rate,
            id: paid - ga_us_channel_measures.conversion_rate, name: paid - Calculated
              Metrics Conversion Rate}], showLabels: true, showValues: true, maxValue: !!null '',
        minValue: !!null '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    series_colors:
      non-paid - ga_us_channel_measures.conversion_rate: "#3EB0D5"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 9
    col: 16
    width: 8
  - name: paid_channel
    title: CR - Paid Channel
    model: us
    explore: ga_channel_us
    type: looker_line
    fields: [ga_channel_us.dynamic_timeframe, ga_us_channel_measures.conversion_rate,
      ga_channel_us.channel_grouping]
    pivots: [ga_channel_us.channel_grouping]
    listen:
      date_aggregation: ga_channel_us.timeframe_picker
      date: ga_channel_us.date_date
      major_channel_only: ga_channel_us.major_channel
    filters:
      ga_channel_us.channel_type: paid
    sorts: [ga_channel_us.channel_grouping 0, ga_channel_us.dynamic_timeframe]
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_channel_us.sessions,
            id: non-paid - ga_channel_us.sessions, name: non-paid - Ga Channel Us Sessions},
          {axisId: ga_channel_us.sessions, id: paid - ga_channel_us.sessions, name: paid
              - Ga Channel Us Sessions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: ga_us_channel_measures.conversion_rate,
            id: non-paid - ga_us_channel_measures.conversion_rate, name: non-paid -
              Calculated Metrics Conversion Rate}, {axisId: ga_us_channel_measures.conversion_rate,
            id: paid - ga_us_channel_measures.conversion_rate, name: paid - Calculated
              Metrics Conversion Rate}], showLabels: true, showValues: true, maxValue: !!null '',
        minValue: !!null '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      non-paid - ga_us_channel_measures.conversion_rate: "#3EB0D5"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
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
    row: 18
    col: 0
    width: 12
  - name: non_paid_channel
    title: CR - Non-Paid Channel
    model: us
    explore: ga_channel_us
    type: looker_line
    fields: [ga_channel_us.dynamic_timeframe, ga_us_channel_measures.conversion_rate,
      ga_channel_us.channel_grouping]
    pivots: [ga_channel_us.channel_grouping]
    listen:
      date_aggregation: ga_channel_us.timeframe_picker
      date: ga_channel_us.date_date
      major_channel_only: ga_channel_us.major_channel
    filters:
      ga_channel_us.channel_type: non-paid
    sorts: [ga_channel_us.channel_grouping 0, ga_channel_us.dynamic_timeframe]
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
    collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    options:
    steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_us_channel_measures.conversion_rate,
      id: Affiliates - ga_us_channel_measures.conversion_rate, name: Affiliates},
      {axisId: ga_us_channel_measures.conversion_rate, id: Google Shopping - ga_us_channel_measures.conversion_rate,
      name: Google Shopping}, {axisId: ga_us_channel_measures.conversion_rate,
      id: Paid Search - ga_us_channel_measures.conversion_rate, name: Paid Search},
      {axisId: ga_us_channel_measures.conversion_rate, id: Paid Social - ga_us_channel_measures.conversion_rate,
      name: Paid Social}], showLabels: true, showValues: true, maxValue: 0.1,
    unpinAxis: false, tickDensity: custom, type: linear}]
    series_types: {}
    series_colors:
    non-paid - ga_us_channel_measures.conversion_rate: "#3EB0D5"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
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
    row: 18
    col: 12
    width: 12
  - name: text_affiliate
    type: text
    height: 3
    width: 24
    # top: N
    row: 27
    col: 0
    title_text: Affiliate
    # subtitle_text: subtitle text
    # body_text: body text
  - name: affiliate_rev_spend
    title: Revenue and Spend
    model: us
    explore: affiliate_pub_placement_vs_non_us
    type: looker_line
    fields: [affiliate_pub_placement_vs_non_us.dynamic_timeframe, affiliate_pub_placement_vs_non_us.revenue_total,
      affiliate_pub_placement_vs_non_us.fee_and_com_total_total]
    listen:
      date_aggregation: affiliate_pub_placement_vs_non_us.timeframe_picker
      date: affiliate_pub_placement_vs_non_us.transaction_date
    sorts: [affiliate_pub_placement_vs_non_us.dynamic_timeframe]
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_pub_placement_vs_non_us.revenue_total,
            id: affiliate_pub_placement_vs_non_us.revenue_total, name: Revenue Total}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: affiliate_pub_placement_vs_non_us.fee_and_com_total_total,
            id: affiliate_pub_placement_vs_non_us.fee_and_com_total_total, name: Fee
              and Com Total Total}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 30
    col: 0
    width: 12
  - name: traffic_order
    title: Traffic and Orders
    model: us
    explore: affiliate_pub_placement_vs_non_us
    type: looker_line
    fields: [affiliate_pub_placement_vs_non_us.dynamic_timeframe, affiliate_pub_placement_vs_non_us.ga_order_count,
      affiliate_pub_placement_vs_non_us.order_count_total, affiliate_pub_placement_vs_non_us.click_count_total,
      affiliate_pub_placement_vs_non_us.ga_session_count]
    listen:
      date_aggregation: affiliate_pub_placement_vs_non_us.timeframe_picker
      date: affiliate_pub_placement_vs_non_us.transaction_date
    sorts: [affiliate_pub_placement_vs_non_us.dynamic_timeframe]
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Traffic, orientation: left, series: [{axisId: affiliate_pub_placement_vs_non_us.click_count_total,
            id: affiliate_pub_placement_vs_non_us.click_count_total, name: Click Count
              Total}, {axisId: affiliate_pub_placement_vs_non_us.ga_session_count, id: affiliate_pub_placement_vs_non_us.ga_session_count,
            name: GA Data Sessions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: Orders, orientation: right, series: [
          {axisId: affiliate_pub_placement_vs_non_us.ga_order_count, id: affiliate_pub_placement_vs_non_us.ga_order_count,
            name: GA Order}, {axisId: affiliate_pub_placement_vs_non_us.order_count_total,
            id: affiliate_pub_placement_vs_non_us.order_count_total, name: Order Count
              Total}], showLabels: true, showValues: true, maxValue: !!null '', unpinAxis: false,
        tickDensity: custom, type: linear}]
    series_types: {}
    series_colors:
      affiliate_pub_placement_vs_non_us.ga_session_count: "#4276BE"
      affiliate_pub_placement_vs_non_us.order_count_total: "#B1399E"
      affiliate_pub_placement_vs_non_us.click_count_total: "#B32F37"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 30
    col: 12
    width: 12
  - name: cac
    title: CAC Reported vs GA
    model: us
    explore: affiliate_pub_placement_vs_non_us
    type: looker_line
    fields: [affiliate_pub_placement_vs_non_us.dynamic_timeframe, affiliate_pub_placement_vs_non_us.order_count_total,
      affiliate_pub_placement_vs_non_us.click_count_total, affiliate_pub_placement_vs_non_us.fee_and_com_total_total,
      affiliate_pub_placement_vs_non_us.ga_order_count]
    listen:
      date_aggregation: affiliate_pub_placement_vs_non_us.timeframe_picker
      date: affiliate_pub_placement_vs_non_us.transaction_date
    sorts: [affiliate_pub_placement_vs_non_us.dynamic_timeframe]
    limit: 500
    dynamic_fields:
    - table_calculation: reported_cac
      label: Reported CAC
      expression: "${affiliate_pub_placement_vs_non_us.fee_and_com_total_total}/${affiliate_pub_placement_vs_non_us.order_count_total}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: ga_cac
      label: GA CAC
      expression: "${affiliate_pub_placement_vs_non_us.fee_and_com_total_total}/${affiliate_pub_placement_vs_non_us.ga_order_count}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: reported_cac, id: reported_cac,
            name: Reported CAC}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: '', orientation: right, series: [
          {axisId: ga_cac, id: ga_cac, name: GA CAC}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    series_types: {}
    series_colors:
      affiliate_pub_placement_vs_non_us.ga_session_count: "#4276BE"
      affiliate_pub_placement_vs_non_us.order_count_total: "#B1399E"
      affiliate_pub_placement_vs_non_us.click_count_total: "#B32F37"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [affiliate_pub_placement_vs_non_us.order_count_total, affiliate_pub_placement_vs_non_us.click_count_total,
      affiliate_pub_placement_vs_non_us.fee_and_com_total_total, affiliate_pub_placement_vs_non_us.ga_order_count]

    row: 39
    col: 0
    width: 12
#   - name: traffic_order
#     title: Traffic and Orders
#     model: us
#     explore: affiliate_pub_placement_vs_non_us
#     type: looker_line
#     fields: [affiliate_pub_placement_vs_non_us.dynamic_timeframe, affiliate_pub_placement_vs_non_us.ga_order_count,
#       affiliate_pub_placement_vs_non_us.order_count_total, affiliate_pub_placement_vs_non_us.click_count_total,
#       affiliate_pub_placement_vs_non_us.ga_session_count]
#     listen:
#       date_aggregation: affiliate_pub_placement_vs_non_us.timeframe_picker
#       date: affiliate_pub_placement_vs_non_us.transaction_date
#     sorts: [affiliate_pub_placement_vs_non_us.dynamic_timeframe]
#     limit: 500
#     query_timezone: America/Los_Angeles
#     x_axis_gridlines: false
#     y_axis_gridlines: true
#     show_view_names: false
#     show_y_axis_labels: true
#     show_y_axis_ticks: true
#     y_axis_tick_density: default
#     y_axis_tick_density_custom: 5
#     show_x_axis_label: true
#     show_x_axis_ticks: true
#     y_axis_scale_mode: linear
#     x_axis_reversed: false
#     y_axis_reversed: false
#     plot_size_by_field: false
#     trellis: ''
#     stacking: ''
#     limit_displayed_rows: false
#     legend_position: center
#     point_style: none
#     show_value_labels: true
#     label_density: 25
#     x_axis_scale: auto
#     y_axis_combined: true
#     show_null_points: true
#     interpolation: linear
#     y_axes: [{label: Traffic, orientation: left, series: [{axisId: affiliate_pub_placement_vs_non_us.click_count_total,
#             id: affiliate_pub_placement_vs_non_us.click_count_total, name: Click Count
#               Total}, {axisId: affiliate_pub_placement_vs_non_us.ga_session_count, id: affiliate_pub_placement_vs_non_us.ga_session_count,
#             name: GA Data Sessions}], showLabels: true, showValues: true, unpinAxis: false,
#         tickDensity: default, type: linear}, {label: Orders, orientation: right, series: [
#           {axisId: affiliate_pub_placement_vs_non_us.ga_order_count, id: affiliate_pub_placement_vs_non_us.ga_order_count,
#             name: GA Order}, {axisId: affiliate_pub_placement_vs_non_us.order_count_total,
#             id: affiliate_pub_placement_vs_non_us.order_count_total, name: Order Count
#               Total}], showLabels: true, showValues: true, maxValue: !!null '', unpinAxis: false,
#         tickDensity: custom, type: linear}]
#     series_types: {}
#     series_colors:
#       affiliate_pub_placement_vs_non_us.ga_session_count: "#4276BE"
#       affiliate_pub_placement_vs_non_us.order_count_total: "#B1399E"
#       affiliate_pub_placement_vs_non_us.click_count_total: "#B32F37"
#     ordering: none
#     show_null_labels: false
#     show_totals_labels: false
#     show_silhouette: false
#     totals_color: "#808080"
#     defaults_version: 1
#     row: 39
#     col: 12
#     width: 12
  # - name: order_cac_aff_us
  #   title: Order and CAC US
  #   model: us
  #   explore: affiliate_pub_placement_vs_non_us
  #   type: looker_line
  #   fields: [affiliate_pub_placement_vs_non_us.dynamic_timeframe, affiliate_final_measures.cac,
  #     affiliate_pub_placement_vs_non_us.order_count]
  #   listen:
  #     date_aggregation: affiliate_pub_placement_vs_non_us.timeframe_picker
  #     date: affiliate_pub_placement_vs_non_us.transaction_date
  #   filters:
  #     affiliate_pub_placement_vs_non_us.market: us
  #   sorts: [affiliate_pub_placement_vs_non_us.dynamic_timeframe]
  #   limit: 500
  #   column_limit: 50
  #   query_timezone: America/Los_Angeles
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: false
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: true
  #   show_x_axis_ticks: true
  #   y_axis_scale_mode: linear
  #   x_axis_reversed: false
  #   y_axis_reversed: false
  #   plot_size_by_field: false
  #   trellis: ''
  #   stacking: ''
  #   limit_displayed_rows: false
  #   legend_position: center
  #   point_style: none
  #   show_value_labels: true
  #   label_density: 25
  #   x_axis_scale: auto
  #   y_axis_combined: true
  #   show_null_points: true
  #   interpolation: linear
  #   y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_final_measures.cac,
  #           id: affiliate_final_measures.cac, name: Cac}], showLabels: true, showValues: true,
  #       unpinAxis: false, tickDensity: default, type: linear}, {label: '', orientation: right,
  #       series: [{axisId: affiliate_pub_placement_vs_non_us.order_count, id: affiliate_pub_placement_vs_non_us.order_count,
  #           name: Order Count}], showLabels: true, showValues: true, unpinAxis: false,
  #       tickDensity: default, type: linear}]
  #   series_types: {}
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   row: 39
  #   col: 0
  #   width: 12
