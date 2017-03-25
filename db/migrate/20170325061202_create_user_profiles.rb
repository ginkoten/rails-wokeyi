class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.string :full_name,                     null:true
      t.datetime :birth_day,                   null:true
      t.string :gender,                        null:true
      t.string :phone_number,                  null:true
      t.references :user, foreign_key: true,   null:false

      t.timestamps
    end
  end
end
