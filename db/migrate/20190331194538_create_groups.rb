class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :code
      t.references :organization, foreign_key: true, null: false
      t.timestamps
    end
  end
end
