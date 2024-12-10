# frozen_string_literal: true

# ApplicationHelper provides helper methods for views.
class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :user, uniqueness: { scope: :post }
end
