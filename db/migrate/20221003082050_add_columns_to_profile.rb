class AddColumnsToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :prof_info, :text
    add_reference :profiles, :user, null: false
  end
end
