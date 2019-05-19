class CreateAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :attributes do |t|
      t.integer :user_id
      t.string :attribute

      t.timestamps
    end
  end
end
