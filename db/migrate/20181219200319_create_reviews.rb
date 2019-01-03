class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :student_id
      t.integer :school_id
      t.integer :category_id
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end
