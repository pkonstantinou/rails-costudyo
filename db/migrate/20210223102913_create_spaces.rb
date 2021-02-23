class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :title
      t.string :location
      t.string :description
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
