class AddAttributeToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :attribute_name, :string
  end
end
