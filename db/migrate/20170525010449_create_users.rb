class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :company_type
      t.string :company_name
      t.string :ref_example
      t.string :deadline
      t.string :money

      t.timestamps
    end
  end
end
