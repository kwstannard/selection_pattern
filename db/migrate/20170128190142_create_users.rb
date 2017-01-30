class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :favorite_book_id

      t.timestamps
    end
  end
end
