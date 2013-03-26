class Maker < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :email, :image, :remote_image_url

    mount_uploader :image, MakerImageUploader

    def full_name
        "#{first_name} #{last_name}"
    end

    # def image_url
    #   return read_attribute(:image_url)
    # end
end