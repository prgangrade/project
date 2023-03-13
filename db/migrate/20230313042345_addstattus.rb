class Addstattus < ActiveRecord::Migration[7.0]
  def change
    add_column :frieends, :stattus, :boolean
  end
end
