class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone, null: false
      t.string :email
      t.string :name

      t.timestamps
    end

    add_index :users, :phone
  end
end
