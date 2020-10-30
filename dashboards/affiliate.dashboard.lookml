- dashboard: affiliate
  title: Affiliate Performance
  layout: newspaper
  tile_size: 100
  filters:
  - name: date
    title: 'Date Range'
    type: date_filter
    default_value: 3 months

  - name: date_aggregation
    type: field_filter
    model: us
    explore: ga_channel_us
    field: ga_channel_us.timeframe_picker
    default_value: "Week"

  elements:
  - name: text_02
    type: text
    height: 3
    width: 24
    # top: N
    row: 1
    col: 0
    title_text: Traffic and Conversion Rate
  - name: click_cr_us
    title: Clicks and CR - US
    model: us
    explore: affiliate_publisher_performance
    type: looker_line
    fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_measures.conversion_rate,
      affiliate_publisher_performance.clicks]
    listen:
      date_aggregation: affiliate_publisher_performance.timeframe_picker
      date: affiliate_publisher_performance.transaction_date
    filters:
      affiliate_publisher_performance.market: us
    sorts: [affiliate_publisher_performance.dynamic_timeframe]
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
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_publisher_performance.clicks,
            id: affiliate_publisher_performance.clicks, name: Clicks}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {label: '',
        orientation: right, series: [{axisId: affiliate_publisher_measures.conversion_rate,
            id: affiliate_publisher_measures.conversion_rate, name: Conversion Rate}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 4
    height: 7
    col: 0
    width: 12
  - name: click_cr_au
    title: Clicks and CR - AU
    model: us
    explore: affiliate_publisher_performance
    type: looker_line
    fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_measures.conversion_rate,
      affiliate_publisher_performance.clicks]
    listen:
      date_aggregation: affiliate_publisher_performance.timeframe_picker
      date: affiliate_publisher_performance.transaction_date
    filters:
      affiliate_publisher_performance.market: au
    sorts: [affiliate_publisher_performance.dynamic_timeframe]
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
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_publisher_performance.clicks,
            id: affiliate_publisher_performance.clicks, name: Clicks}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {label: '',
        orientation: right, series: [{axisId: affiliate_publisher_measures.conversion_rate,
            id: affiliate_publisher_measures.conversion_rate, name: Conversion Rate}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 4
    height: 7
    col: 12
    width: 12
  - name: text_01
    type: text
    height: 3
    width: 24
    # top: N
    row: 11
    col: 0
    title_text: Order and AOV
    # subtitle_text: subtitle text
    # body_text: body text

  - name: order_aov_us
    title: Orders and AOV - US
    model: us
    explore: affiliate_publisher_performance
    type: looker_line
    fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.orders,
      affiliate_publisher_measures.average_order_value]
    listen:
      date_aggregation: affiliate_publisher_performance.timeframe_picker
      date: affiliate_publisher_performance.transaction_date
    filters:
      affiliate_publisher_performance.market: us
    sorts: [affiliate_publisher_performance.dynamic_timeframe]
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
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_publisher_performance.sales,
            id: affiliate_publisher_performance.sales, name: Sales}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {label: '',
        orientation: right, series: [{axisId: affiliate_publisher_performance.orders,
            id: affiliate_publisher_performance.orders, name: Orders}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 14
    height: 7
    col: 0
    width: 12
  - name: order_aov_au
    title: Order and AOV AU (AUD)
    model: us
    explore: affiliate_publisher_performance
    type: looker_line
    fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.orders,
      affiliate_publisher_measures.average_order_value]
    listen:
      date_aggregation: affiliate_publisher_performance.timeframe_picker
      date: affiliate_publisher_performance.transaction_date
    filters:
      affiliate_publisher_performance.market: au
    sorts: [affiliate_publisher_performance.dynamic_timeframe]
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
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_publisher_performance.sales,
            id: affiliate_publisher_performance.sales, name: Sales}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {label: '',
        orientation: right, series: [{axisId: affiliate_publisher_performance.orders,
            id: affiliate_publisher_performance.orders, name: Orders}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 14
    height: 7
    col: 12
    width: 12
  - name: text_03
    type: text
    height: 3
    width: 24
    # top: N
    row: 21
    col: 0
    title_text: Revenue and Commission
    # subtitle_text: subtitle text
    # body_text: body text
  - name: rev_com_us
    title: Revenue and Commission - US
    model: us
    explore: affiliate_publisher_performance
    type: looker_line
    fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.total_commission,
      affiliate_publisher_performance.sales]
    listen:
      date_aggregation: affiliate_publisher_performance.timeframe_picker
      date: affiliate_publisher_performance.transaction_date
    filters:
      affiliate_publisher_performance.market: us
    sorts: [affiliate_publisher_performance.dynamic_timeframe]
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
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_publisher_performance.sales,
            id: affiliate_publisher_performance.sales, name: Sales}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {label: '',
        orientation: right, series: [{axisId: affiliate_publisher_performance.total_commission,
            id: affiliate_publisher_performance.total_commission, name: Total Commission}],
        showLabels: true, showValues: true, maxValue: 5000, unpinAxis: false, tickDensity: default,
        type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 24
    height: 7
    col: 0
    width: 12
  - name: rev_com_au
    title: Revenue and Commission - AU (AUD)
    model: us
    explore: affiliate_publisher_performance
    type: looker_line
    fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.total_commission,
      affiliate_publisher_performance.sales]
    listen:
      date_aggregation: affiliate_publisher_performance.timeframe_picker
      date: affiliate_publisher_performance.transaction_date
    filters:
      affiliate_publisher_performance.market: au
    sorts: [affiliate_publisher_performance.dynamic_timeframe]
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
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_publisher_performance.sales,
            id: affiliate_publisher_performance.sales, name: Sales}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {label: '',
        orientation: right, series: [{axisId: affiliate_publisher_performance.total_commission,
            id: affiliate_publisher_performance.total_commission, name: Total Commission}],
        showLabels: true, showValues: true, maxValue: 3000, unpinAxis: false, tickDensity: default,
        type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 24
    height: 7
    col: 12
    width: 12
  - name: text_05
    type: text
    height: 3
    width: 24
    # top: N
    row: 31
    col: 0
    title_text: ROAS and CAC
    # subtitle_text: subtitle text
    # body_text: body text
  - name: roas_cac_us
    title: ROAS and CAC US
    model: us
    explore: affiliate_publisher_performance
    type: looker_line
    fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.total_commission,
      affiliate_publisher_performance.orders, affiliate_publisher_performance.sales]
    listen:
      date_aggregation: affiliate_publisher_performance.timeframe_picker
      date: affiliate_publisher_performance.transaction_date
    filters:
      affiliate_publisher_performance.market: us
    sorts: [affiliate_publisher_performance.dynamic_timeframe]
    limit: 500
    dynamic_fields:
    - table_calculation: roas
      label: ROAS
      expression: "${affiliate_publisher_performance.sales}/${affiliate_publisher_performance.total_commission}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cac
      label: CAC
      expression: "${affiliate_publisher_performance.total_commission}/${affiliate_publisher_performance.orders}"
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
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [affiliate_publisher_performance.sales, affiliate_publisher_performance.orders,
      affiliate_publisher_performance.total_commission]
    row: 34
    height: 7
    col: 0
    width: 12
  - name: roas_cac_au
    title: ROAS and CAC AU
    model: us
    explore: affiliate_publisher_performance
    type: looker_line
    fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.total_commission,
      affiliate_publisher_performance.orders, affiliate_publisher_performance.sales]
    listen:
      date_aggregation: affiliate_publisher_performance.timeframe_picker
      date: affiliate_publisher_performance.transaction_date
    filters:
      affiliate_publisher_performance.market: au
    sorts: [affiliate_publisher_performance.dynamic_timeframe]
    limit: 500
    dynamic_fields:
    - table_calculation: roas
      label: ROAS
      expression: "${affiliate_publisher_performance.sales}/${affiliate_publisher_performance.total_commission}"
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cac
      label: CAC
      expression: "${affiliate_publisher_performance.total_commission}/${affiliate_publisher_performance.orders}"
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
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [affiliate_publisher_performance.sales, affiliate_publisher_performance.orders,
      affiliate_publisher_performance.total_commission]
    row: 34
    height: 7
    col: 12
    width: 12
  # - name: text_04
  #   type: text
  #   height: 3
  #   width: 24
  #   # top: N
  #   row: 41
  #   col: 0
  #   title_text: Placement Offer Performance
  #   # subtitle_text: subtitle text
  #   # body_text: body text
  # - name: placement_offer_pub_us
  #   title: Revenue - US
  #   model: us
  #   explore: affiliate_publisher_performance
  #   type: looker_line
  #   fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.sales,
  #     affiliate_publisher_performance.pub_name]
  #   pivots: [affiliate_publisher_performance.pub_name]
  #   listen:
  #     date_aggregation: affiliate_publisher_performance.timeframe_picker
  #     date: affiliate_publisher_performance.transaction_date
  #   filters:
  #     affiliate_publisher_performance.market: us
  #     placement_pub_affiliate.placement: placement
  #   sorts: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.pub_name]
  #   limit: 500
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
  #   interpolation: monotone
  #   y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_publisher_performance.sales,
  #           id: affiliate_publisher_performance.sales, name: Sales}], showLabels: true,
  #       showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {label: '',
  #       orientation: right, series: [{axisId: affiliate_publisher_performance.total_commission,
  #           id: affiliate_publisher_performance.total_commission, name: Total Commission}],
  #       showLabels: true, showValues: true, maxValue: 5000, unpinAxis: false, tickDensity: default,
  #       type: linear}]
  #   series_types: {}
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   row: 44
  #   height: 7
  #   col: 0
  #   width: 12
  # - name: placement_offer_pub_au
  #   title: Revenue - AU (AUD)
  #   model: us
  #   explore: affiliate_publisher_performance
  #   type: looker_line
  #   fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.sales,
  #     affiliate_publisher_performance.pub_name]
  #   pivots: [affiliate_publisher_performance.pub_name]
  #   listen:
  #     date_aggregation: affiliate_publisher_performance.timeframe_picker
  #     date: affiliate_publisher_performance.transaction_date
  #   filters:
  #     affiliate_publisher_performance.market: au
  #     placement_pub_affiliate.placement: placement
  #   sorts: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.pub_name]
  #   limit: 500
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
  #   interpolation: monotone
  #   y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_publisher_performance.sales,
  #           id: affiliate_publisher_performance.sales, name: Sales}], showLabels: true,
  #       showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {label: '',
  #       orientation: right, series: [{axisId: affiliate_publisher_performance.total_commission,
  #           id: affiliate_publisher_performance.total_commission, name: Total Commission}],
  #       showLabels: true, showValues: true, maxValue: 5000, unpinAxis: false, tickDensity: default,
  #       type: linear}]
  #   series_types: {}
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   row: 44
  #   height: 7
  #   col: 12
  #   width: 12
  # - name: placement_pub_cr_us
  #   title: CR - US
  #   model: us
  #   explore: affiliate_publisher_performance
  #   type: looker_line
  #   fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.pub_name,
  #     affiliate_publisher_measures.conversion_rate]
  #   pivots: [affiliate_publisher_performance.pub_name]
  #   listen:
  #     date_aggregation: affiliate_publisher_performance.timeframe_picker
  #     date: affiliate_publisher_performance.transaction_date
  #   filters:
  #     affiliate_publisher_performance.market: us
  #     placement_pub_affiliate.placement: placement
  #   sorts: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.pub_name]
  #   limit: 500
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
  #   interpolation: monotone
  #   y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_publisher_performance.sales,
  #           id: affiliate_publisher_performance.sales, name: Sales}], showLabels: true,
  #       showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {label: '',
  #       orientation: right, series: [{axisId: affiliate_publisher_performance.total_commission,
  #           id: affiliate_publisher_performance.total_commission, name: Total Commission}],
  #       showLabels: true, showValues: true, maxValue: 5000, unpinAxis: false, tickDensity: default,
  #       type: linear}]
  #   series_types: {}
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   row: 51
  #   height: 7
  #   col: 0
  #   width: 12
  # - name: placement_pub_cr_au
  #   title: CR - AU
  #   model: us
  #   explore: affiliate_publisher_performance
  #   type: looker_line
  #   fields: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.pub_name,
  #     affiliate_publisher_measures.conversion_rate]
  #   pivots: [affiliate_publisher_performance.pub_name]
  #   listen:
  #     date_aggregation: affiliate_publisher_performance.timeframe_picker
  #     date: affiliate_publisher_performance.transaction_date
  #   filters:
  #     affiliate_publisher_performance.market: au
  #     placement_pub_affiliate.placement: placement
  #   sorts: [affiliate_publisher_performance.dynamic_timeframe, affiliate_publisher_performance.pub_name]
  #   limit: 500
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
  #   interpolation: monotone
  #   y_axes: [{label: '', orientation: left, series: [{axisId: affiliate_publisher_performance.sales,
  #           id: affiliate_publisher_performance.sales, name: Sales}], showLabels: true,
  #       showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {label: '',
  #       orientation: right, series: [{axisId: affiliate_publisher_performance.total_commission,
  #           id: affiliate_publisher_performance.total_commission, name: Total Commission}],
  #       showLabels: true, showValues: true, maxValue: 5000, unpinAxis: false, tickDensity: default,
  #       type: linear}]
  #   series_types: {}
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   row: 51
  #   height: 7
  #   col: 12
  #   width: 12