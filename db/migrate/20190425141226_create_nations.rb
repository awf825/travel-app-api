class CreateNations < ActiveRecord::Migration[5.2]
  def change
    create_table :nations do |t|
      t.string :name
      t.string :language

      t.timestamps
    end
  end
end
