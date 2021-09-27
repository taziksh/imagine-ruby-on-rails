class AddColumnToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :image, :string
  end
end
