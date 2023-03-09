class CreatePendings < ActiveRecord::Migration[7.0]
  def change
    create_table :pendings do |t|
      t.string :email
      t.string :string
      t.references :user

      t.timestamps
    end
  end
end
