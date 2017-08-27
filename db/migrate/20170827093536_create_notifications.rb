class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.references :user, foreign_key: true
      t.string :notifiable_type
      t.integer :notifiable_id
      t.string :text
      t.boolean :read, default: false
      t.string :linkable_type
      t.integer :linkable_id

      t.timestamps
    end
  end
end
