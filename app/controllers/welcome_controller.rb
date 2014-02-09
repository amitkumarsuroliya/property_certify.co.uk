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
  end

  def commercial
  end

  def property_info
    @contact = Contact.new(contact_params)
    if @contact.save
      WelcomeMailer.registration_confirmation(@contact).deliver
      flash[:notice] = "An Email has been sent, We will contact u soon"
    else
      flash[:error] = "Error updating Contacts"
    end
    redirect_to :back
  end
end

private

  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_params
    params.require(:contact).permit(:when, :time, :address,:name,:email, :phone_number)
  end
