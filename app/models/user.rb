class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :username, presence: true
         devise :database_authenticatable, :authentication_keys => [:username]
         validates :username, uniqueness: true
         has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/user.png"
         validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
