# frozen_string_literal: true

# ApplicationHelper provides helper methods for views.
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :author, presence: true
  validates :text, presence: true
end
