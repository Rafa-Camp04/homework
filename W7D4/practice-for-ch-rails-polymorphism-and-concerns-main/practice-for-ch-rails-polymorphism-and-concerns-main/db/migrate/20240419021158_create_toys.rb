class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.string :name, null: false
      t.references :toyable, polymorphic: true, null: false, index: { name: "index_toys_on_toyable" }
      t.timestamps
    end
    add_index :toys, [ :name, :toyable_type, :toyable_id], unique: true
  end
end
