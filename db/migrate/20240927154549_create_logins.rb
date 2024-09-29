class CreateLogins < ActiveRecord::Migration[7.2]
  def change
    create_table :logins do |t|
      t.string :email, null:false
      t.string :password_digest

      t.timestamps
    end
  end
end
