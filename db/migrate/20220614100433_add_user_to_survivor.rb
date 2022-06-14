class AddUserToSurvivor < ActiveRecord::Migration[6.1]
  def change
    add_reference :survivors, :user, foreign_key: true
  end
end
