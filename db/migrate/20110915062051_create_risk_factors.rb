class CreateRiskFactors < ActiveRecord::Migration
  def change
    create_table :risk_factors do |t|
      t.string :status

      t.timestamps
    end
  end
end
