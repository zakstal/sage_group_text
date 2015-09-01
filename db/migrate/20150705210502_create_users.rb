class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone, null: false
      t.string :email
      t.string :password_digest
      t.string :session_token
      t.boolean :is_on_income_step, default: true

      t.timestamps
    end

    add_index :users, :phone
  end
end
