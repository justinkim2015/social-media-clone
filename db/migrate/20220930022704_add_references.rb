class AddReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :post, null: false
    add_reference :likes, :user, null: false
  end
end
