class Notification < ActionMailer::Base
  default from: "No_reply@example.com"
  default content_type: "text/html"

  def invite_user_template(email)
    @email = email
    mail(:to => email, :subject => "Mysite Invitation")
  end
end
