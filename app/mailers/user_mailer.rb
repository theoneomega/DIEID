class UserMailer < ActionMailer::Base
  default :from =>"dieidtest@gmail.com"
  def registration_confirmation(user)  
    mail(:to => user.email, :subject => "Registered")  
  end  
end


#class ClientMailer < ActionMailer::Base
#  default from: "no-reply@emobile-demos.com.mx"
#  def new_comment(comment, email)
#    @comment = comment
#    mail(:to => email, :subject => "El cliente #{@comment.fullname} ha dejado un nuevo comentario.")
#  end
#    def new_delivery_date(order)
#    @order = order
#    mail(:to => order.client.email, :subject => "Su orden No. #{@order.identifier} ha sido programada para ser entregada el dia #{@order.delivery_date}.")
#  end
#end