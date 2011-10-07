class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.string :name

      t.timestamps
    end
  end
end
