class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :num
      t.integer :user_id
      t.timestamps
    end
  end
end
