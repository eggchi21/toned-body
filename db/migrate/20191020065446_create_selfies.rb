class CreateSelfies < ActiveRecord::Migration[5.2]
  def change
    create_table :selfies do |t|
      t.string :picture, null: false
      t.references :report, foreign_key: true
      t.timestamps
    end
  end
end
