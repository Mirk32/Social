class AddSocialLinksToUsers < ActiveRecord::Migration[5.1]
  def change
    enable_extension "hstore"
    add_column :users, :social_links, :hstore, default: {}
    add_index :users, :social_links, using: :gin
  end
end
