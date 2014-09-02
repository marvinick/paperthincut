class AppMailer < ActionMailer::Base
  def order_confirmation(order)
    @order = order
    mail to: @order.email, from: "marvkiluw@gmail.com", subject: "Next delivery day order"
  end
end