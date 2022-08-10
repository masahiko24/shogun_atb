class CreateFavarites < ActiveRecord::Migration[6.0]
  def change
    create_table :favarites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :photo, null: false, foreign_key: true
      t.timestamps
    end
  end
end
