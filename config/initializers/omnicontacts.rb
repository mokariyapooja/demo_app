require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail,
  "638595028802-fb2d83gua7it3kkmis256eadogqkftj2.apps.googleusercontent.com",
  "0GzrjHYEorwugKDqjj7hsgo4",
  {:redirect_path => "/oauth2callback"}
end
