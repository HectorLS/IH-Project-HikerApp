require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "6f6897ed314005a331c0bf8012a0e3f8fc7f0d5e8cd4d11e5cec1ce429f61230"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
