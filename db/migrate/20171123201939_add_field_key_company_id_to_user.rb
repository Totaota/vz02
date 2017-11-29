class AddFieldKeyCompanyIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :company_id, :string
    add_foreign_key :users, :company_id
    add_foreign_key :companies, :user_id
    
  end
end
