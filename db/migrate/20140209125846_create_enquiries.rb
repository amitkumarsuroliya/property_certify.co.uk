class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :telephone
      t.string :email
      t.text :enquiry

      t.timestamps
    end
  end
end
