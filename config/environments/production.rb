MoviesRails::Application.configure do
  # Settings specified here will take precedence over those in class_mapper.rb/factory.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = false

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false

  # Generate digests for assets URLs
  config.assets.digest = true

  # Defaults to nil and saved in location specified by class_mapper.rb.assets.prefix
  # class_mapper.rb.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files
  # class_mapper.rb.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # class_mapper.rb.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the movies_rails over SSL, use Strict-Transport-Security, and use secure cookies.
  # class_mapper.rb.force_ssl = true

  # See everything in the log (default is :info)
  # class_mapper.rb.log_level = :debug

  # Prepend all log lines with the following tags
  # class_mapper.rb.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups
  # class_mapper.rb.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production
  # class_mapper.rb.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  # class_mapper.rb.action_controller.asset_host = "http://assets.example.com"

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  # class_mapper.rb.assets.precompile += %w( search.js )

  # Disable delivery errors, bad email addresses will be ignored
  # class_mapper.rb.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # class_mapper.rb.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  # class_mapper.rb.active_record.auto_explain_threshold_in_seconds = 0.5
end
