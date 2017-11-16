class AddFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :civility, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :social_reason, :string
    add_column :users, :profil, :string
    add_column :users, :siret, :string
    add_column :users, :tel, :string
    add_column :users, :rubric, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
  end
end
