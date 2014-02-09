class Enquiry < ActiveRecord::Base
	validates_presence_of  :name, :email, :telephone, :enquiry
end
