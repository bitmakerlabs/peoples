class Maker < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :email, :image_url
    def full_name
        "#{first_name} #{last_name}"
    end
end