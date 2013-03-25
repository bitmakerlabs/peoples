class AddMakers < ActiveRecord::Migration
   def up
      create_table :makers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image_url
   	end
   end

   def down
      drop_table :makers
   end
end
