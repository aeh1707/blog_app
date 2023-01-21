class CreatesComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :post, foreign_key: true, index: true
      t.references :author, foreign_key: { to_table: 'users' }, index: true
      t.text :text
      t.timestamps
    end
  end
end
