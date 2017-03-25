class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_time,                 null:false
      t.datetime :end_time,                   null:false
      t.references :user, foreign_key: true,  null:false
      t.references :skill, foreign_key: true, null:false
      t.string :status,                       null:false

      t.timestamps
    end
  end
end
