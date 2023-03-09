class Addstatus < ActiveRecord::Migration[7.0]
  def change
    add_column :pendings, :status, :boolean
  end
end
