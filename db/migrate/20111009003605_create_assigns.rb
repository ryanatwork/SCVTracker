class CreateAssigns < ActiveRecord::Migration
  def change
    create_table :assigns do |t|
      t.string :team

      t.timestamps
    end
  end
end
