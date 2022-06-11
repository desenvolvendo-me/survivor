class CreateSurvivors < ActiveRecord::Migration[6.1]
  def change
    create_table :survivors do |t|
      t.string :name
      t.integer :age
      t.string :state
      t.string :city
      t.string :gender

      t.timestamps
    end
  end
end