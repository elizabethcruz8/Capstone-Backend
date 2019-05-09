class AddGamertagToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Gamer_Tag, :string
  end
end
