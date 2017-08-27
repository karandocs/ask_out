class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile
      t.integer :gender
      t.date :dob
      t.string :college
      t.text :about

      t.timestamps
    end
  end
end
