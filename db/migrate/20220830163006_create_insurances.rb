class CreateInsurances < ActiveRecord::Migration[6.0]
  def change
    create_table :insurances do |t|
      t.string :title
      t.text :description
      t.decimal :premium_amount, precision: 10, scale: 2, default: 0.0

      t.timestamps
    end
  end
end
