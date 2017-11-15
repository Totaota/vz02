class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         validates :civility, presence:true, length: {maximum: 10}
         validates :first_name, presence:true, length: {maximum: 50}
         validates :last_name, presence:true, length: {maximum: 50}
         validates :social_reason, presence:true, length: {maximum: 100}
         validates :profil, presence:true, length: {maximum: 100}
         validates :siret, presence:true, length: {maximum: 14}
         validates :tel, presence:true, length: {maximum: 12}
         validates :rubric, presence:true, length: {maximum: 50}
         validates :address, presence:true, length: {maximum: 150}
         validates :city, presence:true, length: {maximum: 60}
         
         
         
end
