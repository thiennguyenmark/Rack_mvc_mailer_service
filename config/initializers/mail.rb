config.action_mailer.default_url_options = {host: ENV['MAILER_HOST']}
  config.action_mailer.delivery_method = :letter_opener
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'gmail.com',
    user_name:            ENV['MAILER_EMAIL'],
    password:             ENV['MAILER_PASSWORD'],
    authentication:       :plain,
    enable_starttls_auto: true
  }
