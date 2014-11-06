OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1497909220484266', '9a6510975d4dde6700609bb49bacb0ad'
end