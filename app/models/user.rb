class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :company
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
         
         validates :first_name, presence:true, length: {maximum: 50}
         validates :last_name, presence:true, length: {maximum: 50}
         validates :social_reason, presence:true, length: {maximum: 100}
         validates :profil, presence:true, length: {maximum: 100}
         validates :siret, presence:true, length: {maximum: 20}
         validates :tel, presence:true, length: {maximum: 20}
         validates :rubric, presence:true, length: {maximum: 50}
         validates :address, presence:true, length: {maximum: 150}
         validates :city, presence:true, length: {maximum: 60}
         
         
         
end
