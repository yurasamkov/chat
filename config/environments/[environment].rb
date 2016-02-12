# General Settings
config.app_domain = ENV['APP_DOMAIN'] # Email
config.action_mailer.delivery_method = :smtp
config.action_mailer.perform_deliveries = true
config.action_mailer.default_url_options = { host: config.app_domain }
config.action_mailer.smtp_settings = {
  address: 'smtp.gmail.com',
  port: '587',
  enable_starttls_auto: true,
  user_name: ENV['GMAIL_USER'],
  password: ENV['GMAIL_PASS'],
  authentication: :plain,
  domain: ENV['APP_DOMAIN']
}