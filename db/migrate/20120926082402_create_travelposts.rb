class CreateTravelposts < ActiveRecord::Migration
  def change
    create_table :travelposts do |t|
      t.string :content
      t.string :destination
      t.integer :user_id

      t.timestamps
    end
    add_index :travelposts, [:user_id, :created_at]
  end
end
