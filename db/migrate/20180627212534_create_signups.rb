class CreateSignups < ActiveRecord::Migration[5.2]
  def change
    create_table :signups do |t|
      t.text :firstname
      t.text :email
      t.string :password_digest
      t.timestamps
    end
  end
end
