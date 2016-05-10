class AddFavsToAlgos < ActiveRecord::Migration
  def change
    add_column :algos, :fav, :boolean, default: false
  end
end
