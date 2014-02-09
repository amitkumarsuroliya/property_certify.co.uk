class EnquiryMailer < ActionMailer::Base
  def enquiry_confirmation(enquiry)
  	@enquiry = enquiry
	  mail :to => "info@greenepcdeal.co.uk", :from => "email@domain.com", :subject => "Subject line"
	end
end
