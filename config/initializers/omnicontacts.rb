require "omnicontacts"

  Rails.application.middleware.use OmniContacts::Builder do
    importer :gmail,
    "638595028802-ft5m19tnqj7vmrsthse6pcffm66hlnpm.apps.googleusercontent.com",
    "i2xV5QznVDV_16DAXDoyd-eC",
    {:redirect_path => "/oauth2callback"}
  end