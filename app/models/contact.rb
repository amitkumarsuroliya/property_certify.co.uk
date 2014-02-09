class Contact < ActiveRecord::Base
	validates_presence_of :when, :address, :name, :email, :phone_number

	ALL_HOURS = ["8 to 10am","10am to 12pm","12pm to 2pm","2pm to 4pm","4pm to 6pm","6pm to 8pm","8pm to 10pm","10pm to 12pm","12pm to 2am","2am to 4am","4am to 6am","6am to 8am"]
  HOUR_NAMES = ALL_HOURS.each_with_index.map{|x,n|[x,n]}
end
