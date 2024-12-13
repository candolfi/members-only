class AddTitleToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :author, :string
  end
end
