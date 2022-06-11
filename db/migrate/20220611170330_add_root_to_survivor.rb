class AddRootToSurvivor < ActiveRecord::Migration[6.1]
  def change
    add_column :survivors, :root, :boolean
  end
end
