class AddUserReferencesToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :user, foreign_key: true, null:false
  end
end
