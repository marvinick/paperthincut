class AppMailer < ActionMailer::Base
  def request_deliver(request)
    @request = request
    mail to: @request.email,
         cc: "marvkipi@gmail.com",
         bcc: "chrystyle.peace@gmail.com",
        from: "marvkiluw@gmail.com", subject: "In The Raw Broken Arrow - Marvin"
  end

  def send_report(post)
    @post = post
    mail to: @post.email,
         cc: "marvin8214@yahoo.com",
         bcc: "chrystyle.peace@gmail.com",
         from: "marvkiluw@gmail.com", subject: "Last Month's Sushi Inventories and Backouts- BA"
  end
end