class AddFieldCompanyIdToUser < ActiveRecord::Migration
  def change
    add_foreign_key :users, :company_id, :string
  end
end
