class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :student_name, :string
    add_column :users, :guardian_name, :string
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :phone, :integer
    add_column :users, :skype_id, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :morning, :boolean, default: false
    add_column :users, :day, :boolean, default: false
    add_column :users, :evning, :boolean, default: false

  end
end
