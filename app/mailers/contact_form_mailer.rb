class ContactFormMailer < ApplicationMailer
  default from: 'contato@botwave.com'
 
  def contact
    @user = params[:user]
    @email = params[:email]
    @title = params[:title]
    @description = params[:description]
    @portfolio = params[:portfolio]
 
    mail(
          to: @user.email,
          subject: 'Uma empresa te enviou uma mensagem em www.botwave.com.br',
          reply_to: @email,
        )
  end
end