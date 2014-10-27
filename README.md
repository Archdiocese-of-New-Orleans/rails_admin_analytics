rails_admin_analytics
=========

Adds SuperProxy/Google Analytics charts to your rails_admin instance.  You need a [Google Analytics] account and a [SuperProxy] instance already setup.

Add to your Gemfile then bundle install:
```ruby
gem 'rails_admin_analytics', github: 'Archdiocese-of-New-Orleans/rails_admin_analytics'
```

Install the config. file with:
```ruby
rails g rails_admin_analytics:install
```

Add 'analytics' to your config/initializers/rails_admin.rb config.actions.  E.g.
```ruby
config.actions do
    analytics 
    dashboard
    index
    ...
```

Add to the config/initializers/rails_admin.rb charts array Google Visualization ChartWrapper objects.  See config/initializers/rails_admin.rb for example.

[SuperProxy]:https://github.com/googleanalytics/google-analytics-super-proxy
[Google Analytics]:http://www.google.com/analytics/