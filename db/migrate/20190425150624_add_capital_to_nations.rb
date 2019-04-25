class AddCapitalToNations < ActiveRecord::Migration[5.2]
  def change
    add_column :nations, :capital, :string
  end
end
