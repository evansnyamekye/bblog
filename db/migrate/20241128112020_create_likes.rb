# frozen_string_literal: true

# CreateLikes is a migration that creates a table called likes with a user_id and post_id.
class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
