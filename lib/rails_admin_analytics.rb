require "rails_admin_analytics/engine"
require 'google/api_client'
require 'googleauth'

module RailsAdminAnalytics
  class Engine < ::Rails::Engine
    initializer "RailsAdmin precompile hook", group: :all do |app|
      app.config.assets.precompile += %w()
    end
  end

  mattr_accessor :client_secrets_json_path
  mattr_accessor :analytics_view_id

  def self.config
    yield self
  end

  def self.json_key_io
    File.open client_secrets_json_path
  end

  def self.google_client
    client = Google::APIClient.new( application_name: 'rails_admin_analytics', application_version: '0.1')
    client.authorization = Google::Auth::ServiceAccountCredentials.make_creds(json_key_io: json_key_io, scope: 'https://www.googleapis.com/auth/analytics.readonly')
    client
  end

  def self.access_token
    @token ||= google_client.authorization.fetch_access_token!
    @token["access_token"]
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