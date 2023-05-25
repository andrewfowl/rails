class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # added null: false to disallow new user signup with missing emails
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
