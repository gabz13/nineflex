class RemoveColumnEmailFreelancer < ActiveRecord::Migration[5.2]
  def change
    remove_column :freelancers, :email
    remove_column :clients, :email

  end
end
