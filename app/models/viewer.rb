class Viewer < ActiveRecord::Base
    has_many :channels
    has_secure_password 
    validates :name, :email, presence: true
end  

