class AddInfoToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :gender, :string
    add_column :profiles, :relationship_status, :string
    add_column :profiles, :location, :string
    add_column :profiles, :occupation, :string
    add_column :profiles, :education, :string
  end
end
