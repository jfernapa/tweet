class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :status
      t.integer :id_zombie

      t.timestamps
    end
  end
end
