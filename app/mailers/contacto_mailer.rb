class ContactoMailer < ActionMailer::Base
  def mensaje_recibido(contacto)
    @contacto = contacto
    mail(:to => "info@laboralmedicalperu.com", :subject => "Registered", :replay_to => contacto.email, :from => "info@laboralmedicalperu.com")
  end
end
