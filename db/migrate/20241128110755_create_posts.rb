# frozen_string_literal: true

# ApplicationHelper provides helper methods for views.
class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.string :title, null: false
      t.text :text
      t.integer :comments_counter, default: 0, null: false
      t.integer :likes_counter, default: 0, null: false

      t.timestamps
    end
  end
end
