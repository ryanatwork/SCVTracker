class AddNamesToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :school_deputy, :boolean
    add_column :users, :tip_deputy, :boolean
  end
end
