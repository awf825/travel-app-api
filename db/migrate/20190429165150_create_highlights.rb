class CreateHighlights < ActiveRecord::Migration[5.2]
  def change
    create_table :highlights do |t|
      t.string :landmarks
      t.boolean :revisit

      t.timestamps
    end
  end
end
