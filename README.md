rails_admin_analytics
=========

---
IMPORTANT
=========

OOCharts has been discontinued.  Please see the embed_api or super_proxy branch for an alternative.

---

Adds basic OOCharts/Google Analytics charts to your rails_admin instance.  You need a [Google Analytics]  and [OOcharts] account.

Add to your Gemfile then bundle install:
```ruby
gem 'rails_admin_analytics', github: 'Archdiocese-of-New-Orleans/rails_admin_analytics'
```

Install the config. file with:
```ruby
rails g rails_admin_analytics:install
```

Generate an oocharts api key for your site and add it and the profile id to:
```ruby
config/initializers/rails_admin_analytics.rb
```

Add 'analytics' to your config/initializers/rails_admin.rb config.actions.  E.g.
```ruby
config.actions do
    analytics 
    dashboard
    index
    ...
```

[OOcharts]:http://oocharts.com/
[Google Analytics]:http://www.google.com/analytics/