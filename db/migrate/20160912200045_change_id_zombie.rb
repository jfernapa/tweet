class ChangeIdZombie < ActiveRecord::Migration[5.0]
  def change
    rename_column :tweet, :id_zombie, :zombie_id
  end
end
