class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :name
      t.string :slug
      t.text :url

      t.timestamps
    end
    add_index :links, :slug, unique: true
  end
end
