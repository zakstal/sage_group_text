class CreateTextIns < ActiveRecord::Migration
  def change
    create_table :text_ins do |t|
   		t.string :to_country
      t.string :to_state
      t.string :sms_message_sid
      t.string :num_media
      t.string :to_city
      t.string :from_zip
      t.string :sms_sid
      t.string :from_state
      t.string :sms_status
      t.string :from_city
      t.text :body
      t.string :from_country
      t.string :to
      t.string :to_zip
      t.string :message_sid
      t.string :from
      t.string :api_version
      t.string :account_sid

      t.timestamps
    end
  end
end
