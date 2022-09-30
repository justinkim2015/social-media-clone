class AddColumnsToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :user, null: false
    add_reference :comments, :post, null: false
    add_column :comments, :body, :text, null: false
  end
end
