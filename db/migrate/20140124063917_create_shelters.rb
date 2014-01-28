class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.float :lat
      t.float :lng
      t.integer :capacity
      t.string :type
      t.float :floorage
      t.date :day

      t.timestamps
    end
  end
end
