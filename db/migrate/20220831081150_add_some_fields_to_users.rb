class AddSomeFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :date_of_birth, :date
    add_column :users, :accepted_terms, :boolean, default: false
  end
end
