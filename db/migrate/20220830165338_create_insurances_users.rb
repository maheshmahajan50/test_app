class CreateInsurancesUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :insurances_users, id: false do |t|
      t.belongs_to :user
      t.belongs_to :insurance
    end
  end
end
