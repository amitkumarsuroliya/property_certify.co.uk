class WelcomeMailer < ActionMailer::Base
  def registration_confirmation(contact)
  	@contact = contact
	  mail :to => "info@greenepcdeal.co.uk", :from => "email@domain.com", :subject => "Subject line"
	end
end
