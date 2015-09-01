class CreateTextOuts < ActiveRecord::Migration
  def change
    create_table :text_outs do |t|
      t.string :body

      t.timestamps
    end
  end
end
