class CreateFavarites < ActiveRecord::Migration[6.0]
  def change
    create_table :favarites do |t|
      t.integer :user_id
      t.integer :photo_id
      t.timestamps
    end
  end
end
