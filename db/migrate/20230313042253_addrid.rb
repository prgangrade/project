class Addrid < ActiveRecord::Migration[7.0]
  def change
    add_column :frieends, :rid, :integer
  end
end
