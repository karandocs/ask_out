class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :match_to_id
      t.integer :match_from_id
      t.integer :count

      t.timestamps
    end
  end
end
