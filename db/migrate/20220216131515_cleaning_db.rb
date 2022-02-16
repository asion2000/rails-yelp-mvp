class CleaningDb < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :reviews, :string
    remove_column :reviews, :restaurant, :string
    change_column :reviews, :rating, :integer
  end
end
