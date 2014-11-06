require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail,
  "805491520631-pd177rq754fb594jhgtv0i7pocs0d3kn.apps.googleusercontent.com",
  "eI2JSwKTJ9lECD11hCSe1tjW",
  {:redirect_path => "/oauth2callback"}
end