- dashboard: marketing_channel_us
  title: Marketing Channel Us
  layout: newspaper
  tile_size: 100
  filters:
  - name: date
    title: 'Date Range'
    type: date_filter
    default_value: 2 years

  - name: date_aggregation
    type: field_filter
    model: test_vu
    explore: ga_channel_us
    field: ga_channel_us.timeframe_picker
    default_value: "Week"

  - name: major_channel_only
    type: field_filter
    model: test_vu
    explore: ga_channel_us
    field: ga_channel_us.major_channel
    default_value: "Yes"

  elements:
  - name: traffic_channel_type
    title: Traffic - Paid vs Non-Paid
    model: test_vu
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
    model: test_vu
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
    model: test_vu
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
    model: test_vu
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
    model: test_vu
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
    model: test_vu
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
