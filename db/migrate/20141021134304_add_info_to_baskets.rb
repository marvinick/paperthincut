class AddInfoToBaskets < ActiveRecord::Migration
  def change
    add_column :baskets, :info, :text
  end
end
