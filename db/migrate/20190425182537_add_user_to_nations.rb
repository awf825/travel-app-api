class AddUserToNations < ActiveRecord::Migration[5.2]
  def change
    add_reference :nations, :user, foreign_key: true
  end
end
