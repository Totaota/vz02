class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :social_reason
      t.string :email_company
      t.string :address_company
      t.string :tel_company
      t.string :legal_status
      t.string :num_tva
      t.string :rcs
      t.string :ape_code
      t.string :description
      t.string :offer
      t.string :product
      t.string :creation_date
      t.integer :staff
      t.integer :turnover
      t.string :website
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
