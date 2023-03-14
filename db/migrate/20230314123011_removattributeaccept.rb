class Removattributeaccept < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :invitation_accepted_at, :datetime
  end
end
