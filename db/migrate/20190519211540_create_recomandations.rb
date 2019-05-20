class CreateRecomandations < ActiveRecord::Migration[5.2]
  def change
    create_table :recomandations do |t|
      t.integer :user_id
      t.integer :user_from_id
      t.string :recomandation
      t.string :status

      t.timestamps
    end
  end
end
