class ChangeTweetsZombieId < ActiveRecord::Migration[5.0]
  def change
    rename_column :tweets, :id_zombie, :zombie_id
  end
end
