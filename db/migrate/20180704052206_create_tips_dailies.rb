class CreateTipsDailies < ActiveRecord::Migration[5.2]
  def change
    create_table :tips_dailies do |t|
      t.string :tip
      t.string :info
      t.string :link
      t.string :category

      t.timestamps
    end
  end
end
