class AddReferenceToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_reference :profiles, :user, null: :false
  end
end
