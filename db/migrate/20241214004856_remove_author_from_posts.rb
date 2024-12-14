class RemoveAuthorFromPosts < ActiveRecord::Migration[7.1]
  def change
    remove_column :posts, :author, :string
    remove_column :posts, :time, :string
    remove_column :posts, :title, :string
  end
end
