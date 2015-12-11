class CreateClimbs < ActiveRecord::Migration
  def change
    create_table :climbs do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :peak_id
      t.string :peak_name
      t.integer :rank
      t.integer :elevation

      t.timestamps null: false
    end
  end
end
