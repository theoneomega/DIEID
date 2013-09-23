ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "DIEID",  
  :user_name            => "dieidtest",  
  :password             => "dieid1989",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}  