# frozen_string_literal: true

# ApplicationHelper provides helper methods for views.
class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo
      t.text :bio
      t.integer :posts_counter, default: 0

      t.timestamps
    end
  end
end
