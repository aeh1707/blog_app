class CreatesLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :post, foreign_key: true, index: true
      t.references :author, foreign_key: true, index: true
      t.timestamps
    end
  end
end
