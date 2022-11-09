class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, index: :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
