ActionMailer::Base.smtp_settings = {
  :address              => "mail.laboralmedicalperu.com",
  :port                 => 587,
  :domin                => "laboralmedicalperu.com",
  :user_name            => "info@laboralmedicalperu.com",
  :password             => "Sx3ghmb?",
  :authentucaton        => "plain",
  :enable_starttls_auto => false
}

#ActionMailer::Basedefault_url_options[:host] = "laboralmedicalperu.com"
