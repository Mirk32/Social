class Posts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.text :content
      t.string :title
      t.string :status
      t.float :rating
      t.json :images
      t.json :files

      t.timestamps
    end
  end
end
