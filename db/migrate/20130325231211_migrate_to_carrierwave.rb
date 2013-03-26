class MigrateToCarrierwave < ActiveRecord::Migration
  def up
    # Adding the image column for carrierwave
    change_table :makers do |t|
      t.string :image
    end

    # Copying the image_urls into the carrierwave store
    Maker.all.each do |maker|
      url = maker.read_attribute(:image_url)

      # puts maker.inspect
      puts url
      # puts "-------------------"
      maker.remote_image_url = url
      maker.save!
      puts maker.image.inspect
    end

    # Dropping the previous column
    change_table :makers do |t|
     #t.remove :image_url
    end
  end

  def down
    change_table :makers do |t|
      t.remove :image
      #t.string :image_url
    end
  end
end
