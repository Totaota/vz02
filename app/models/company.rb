class Company < ActiveRecord::Base
  belongs_to :user
  
  validates :social_reason, presence: true, length: {maximum: 100}
  validates :email_company, presence: true, length: {maximum: 100}
  validates :address_company, presence: true, length: {maximum: 100}
  #validates :tel_company, presence: true, length: {maximum: 20}
  validates :legal_status, presence: true, length: {maximum: 50}
  #validates :num_tva, presence: true, length: {maximum: 50}
  #validates :rcs, presence: true, length: {maximum: 50}
  #validates :ape_code, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 800}
  validates :offer, presence: true, length: {maximum: 800}
  validates :creation_date, presence: true, length: {maximum: 10}
  validates :staff, numericality: {only_integer: true, greather_than: 1}
  #validates :turnover, numericality: {only_integer: true, greather_than: 1000}
  validates :website, presence: true, length: {maximum: 100}
end
