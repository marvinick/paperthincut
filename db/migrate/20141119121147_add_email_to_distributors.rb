class AddEmailToDistributors < ActiveRecord::Migration
  def change
    add_column :distributors, :email, :string
  end
end
