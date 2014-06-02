class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomster.com"

  def comment_added
  	mail(to: "eckho28@gmail.com",
  		subject: "A new comment has been added to one of your places!")
  end
end
