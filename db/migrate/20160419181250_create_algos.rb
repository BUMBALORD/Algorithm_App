class CreateAlgos < ActiveRecord::Migration
  def change
    create_table :algos do |t|
      t.string :name
      t.text :algorithm

      t.timestamps null: false
    end
  end
end
