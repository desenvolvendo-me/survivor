class AddCityToSurvivor < ActiveRecord::Migration[6.1]
  def change
    add_reference :survivors, :city, foreign_key: true
  end
end
