class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.string :full_name
      t.datetime :birth_day
      t.string :gender
      t.string :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
