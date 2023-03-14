class Removeattribute < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :invitation_token, :invitation_accepted_at
    
  end
end
