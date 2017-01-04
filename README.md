rails_admin_analytics
=========

---
IMPORTANT
=========

Before you can use this, you need: 

1. A [Google Analytics] account and the 'view id' of a report you want to display (obtained from the Analytics dashboard).
2. A 'service account' created from the [Google developer console] and added to the permissions in your Google Analytics account view/property.
3. Generate json client credentials from the [Google developer console].  The json file should be accessible from your Rails app but DO NOT COMMIT IT TO YOUR GIT REPO!

Add to your Gemfile then bundle install:
```ruby
gem 'rails_admin_analytics', github: 'Archdiocese-of-New-Orleans/rails_admin_analytics', branch: 'embed_api'
```

Install the config. file with:
```ruby
rails g rails_admin_analytics:install
```

Add the path to your json client secrets and Analytics view id to:
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

[Google developer console]:https://console.developers.google.com/
[Google Analytics]:http://www.google.com/analytics/