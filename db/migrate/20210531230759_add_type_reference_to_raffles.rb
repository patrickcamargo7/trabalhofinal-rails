class AddTypeReferenceToRaffles < ActiveRecord::Migration[6.1]
  def change
    add_reference :raffles, :type, null: false, foreign_key: true
  end
end
