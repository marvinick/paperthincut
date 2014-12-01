class AppMailer < ActionMailer::Base
  def request_deliver(request)
    @request = request
    mail to: @request.email, from: "marvkiluw@gmail.com", subject: "Order from Marvin - In The Raw Broken Arrow"
  end

  def send_inventory(inventory)
    @inventory = inventory
    mail to: inventory.email, from: "marvin8214@gmail.com", subject: "Last Month Sushi Bar Inventory - ITRBA"
  end
end