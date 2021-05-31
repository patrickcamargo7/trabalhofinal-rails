class AddUserReferenceToRaffles < ActiveRecord::Migration[6.1]
  def change
    add_reference :raffles, :user, null: false, foreign_key: true
  end
end
