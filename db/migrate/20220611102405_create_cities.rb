class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :description
      t.string :uf

      t.timestamps
    end
  end
end
