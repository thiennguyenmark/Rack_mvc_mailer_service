class Contact < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.integer :lastname
      t.string :phone_number
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
