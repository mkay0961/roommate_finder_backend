class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :profile_image
      t.string :description
      t.boolean :looking
      t.string :address

      t.timestamps
    end
  end
end
