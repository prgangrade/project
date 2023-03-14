class CreateFrieends < ActiveRecord::Migration[7.0]
  def change
    create_table :frieends do |t|
    
    

      t.timestamps
    end
  end
end
