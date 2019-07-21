class CreateFreelancers < ActiveRecord::Migration[5.2]
  def change
    create_table :freelancers do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :email
      t.string :photo
      t.integer :rph

      t.timestamps
    end
  end
end
