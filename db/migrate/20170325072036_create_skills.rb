class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :title,                         null:false
      t.text :brief,                           null:false
      t.text :description,                     null:false
      t.integer :price,                        null:false
      t.string :location,                      null:false
      t.string :skills_category,               null:false
      t.references :user, foreign_key: true,   null:false

      t.timestamps
    end
  end
end
