class UserMailer < ActionMailer::Base
  default :from =>"pruebas_dieid@gmail.com"
  def registration_confirmation(user)
    mail(:to=>"theoneomega@gmail.com", :subject=> "Pruebas")
    
  end
end
