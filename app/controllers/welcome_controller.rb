class WelcomeController < ApplicationController

  def index
  end

  def about
  end

  def residential
    @contact = Contact.new
  end

  def testimonial
  end

  def contact
    @enquiry = Enquiry.new
  end

  def commercial
  end

  def property_info
    @contact = Contact.new(contact_params)
    if @contact.save
      WelcomeMailer.registration_confirmation(@contact).deliver
      flash[:notice] = "An Email has been sent, We will contact u soon"
    else
      flash[:error] = "Please Fill required fields."
    end
    redirect_to :back
  end

  def enquiry_info
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      EnquiryMailer.enquiry_confirmation(@enquiry).deliver
      flash[:notice] = "An Email has been sent, We will contact u soon"
    else
      flash[:error] = "Please Fill required fields."
    end
    redirect_to :back
  end
end

private

  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_params
    params.require(:contact).permit(:when, :time, :address,:name,:email, :phone_number)
  end

  def enquiry_params
    params.require(:enquiry).permit(:name, :telephone, :email, :enquiry)
  end
