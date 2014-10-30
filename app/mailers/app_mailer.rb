class AppMailer < ActionMailer::Base
  def request_deliver(request)
    @request = request
    mail to: @request.email, from: "marvkiluw@gmail.com", subject: "Next delivery day order"
  end
end