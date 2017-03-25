class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title,                         null:false
      t.string :description
      t.integer :rating,                       null:false
      t.references :skill, foreign_key: true,  null:false

      t.timestamps
    end
  end
end
