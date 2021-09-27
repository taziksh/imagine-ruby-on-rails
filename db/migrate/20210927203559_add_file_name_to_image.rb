class AddFileNameToImage < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :file_name, :string
    add_column :images, :caption, :string
  end
end
