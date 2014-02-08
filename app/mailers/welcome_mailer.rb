class WelcomeMailer < ActionMailer::Base
  def registration_confirmation(user)
	  mail :to => "amitkumarsuroliya@gmail.com", :from => "email@domain.com", :subject => "Subject line"
	end
end
