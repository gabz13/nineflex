class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :email
      t.string :company

      t.timestamps
    end
  end
end
