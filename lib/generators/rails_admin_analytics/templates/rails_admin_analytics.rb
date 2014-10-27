RailsAdminAnalytics.config do |config|
  # An array of ChartWrapper objects # https://developers.google.com/chart/interactive/docs/reference#chartwrapperobject
  config.charts = [
    {
      chartType: 'LineChart',
      dataSourceUrl: '', # in data-table-response format
      options: { title: 'My Chart'},
      containerId: 'chart' #must be unique
    }
  ]
end