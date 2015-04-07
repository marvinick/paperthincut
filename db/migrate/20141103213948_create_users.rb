class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :email
      t.string :password_digest
    end
  end
  ActiveRecord::Base.connection.users.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
  end
end
