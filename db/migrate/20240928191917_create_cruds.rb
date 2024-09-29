class CreateCruds < ActiveRecord::Migration[7.2]
  def change
    create_table :cruds do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_no
      t.string :house_address
      t.string :day_registered
      t.string :email_id

      t.timestamps
    end
  end
end
