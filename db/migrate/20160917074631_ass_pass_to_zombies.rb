class AssPassToZombies < ActiveRecord::Migration[5.0]
  def change
    add_column :zombies, :pass, :string
  end
end
