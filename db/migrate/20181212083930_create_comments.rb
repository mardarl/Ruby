class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body
      t.string :author
      #t.references :post, foreign_key: true
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
