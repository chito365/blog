class AddUseridToComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :\, :string
    add_reference :comments, :user, null: false, foreign_key: true
  end
end
