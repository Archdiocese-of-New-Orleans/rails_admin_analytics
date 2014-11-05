require "rails_admin_analytics/engine"

module RailsAdminAnalytics
  class Engine < ::Rails::Engine
    initializer "RailsAdmin precompile hook", group: :all do |app|
      app.config.assets.precompile += %w(rails_admin/jquery.spin.js rails_admin/spin.js rails_admin/rails_admin_analytics.js rails_admin/rails_admin_analytics.css)
    end
  end
  mattr_accessor :charts

  def self.config
    yield self
  end
end

require 'rails_admin/config/actions'
module RailsAdmin
  module Config
    module Actions
      class Analytics < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :root? do
          true
        end

        register_instance_option :only do
          true
        end

        register_instance_option :breadcrumb_parent do
          nil
        end

        register_instance_option :controller do
          Proc.new do
            respond_to do |format|
              format.html
            end
          end
        end

        register_instance_option :link_icon do
          'icon-screenshot'
        end

        register_instance_option :http_methods do
          [:get]
        end

        register_instance_option :pjax? do
          false
        end

      end
    end
  end
end