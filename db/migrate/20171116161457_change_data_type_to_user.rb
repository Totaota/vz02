class ChangeDataTypeToUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.change :siret, :string
      t.change :tel, :string
    end
  end
  def self.down
    change_table :users do |t|
      t.change :siret, :integer
      t.change :tel, :integer
    end
  end
end
