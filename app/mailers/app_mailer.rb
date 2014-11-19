class AppMailer < ActionMailer::Base
  def request_deliver(request)
    @request = request
    mail smtp_envelope_to: @request.email, from: "marvkiluw@gmail.com", subject: "Order from Marvin - In The Raw Broken Arrow"
  end
end