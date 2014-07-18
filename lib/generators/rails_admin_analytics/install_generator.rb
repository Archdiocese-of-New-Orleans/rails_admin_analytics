require 'rails/generators'

module RailsAdminAnalytics
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    def install
      copy_file "rails_admin_analytics.rb", "config/initializers/rails_admin_analytics.rb"
    end
  end
end

