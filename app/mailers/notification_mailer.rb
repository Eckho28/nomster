class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomster.com"

  def comment_added(comment)
  	@place = comment.place
  	@place_owner = @place.user
  	mail(to: @place_owner.email,
  		subject: "A new comment has been added to #{@place.name}")
  end
end
