class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :location
      t.integer :size
      t.boolean :university

      t.timestamps
    end
  end
end
