class CreateRoommates < ActiveRecord::Migration[5.2]
  def change
    create_table :roommates do |t|
      t.integer :user_id
      t.integer :roommate_user_id
      t.boolean :current

      t.timestamps
    end
  end
end
