# ApplicationHelper provides helper methods for views.
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  alias_attribute :author, :user

  validates :author, presence: true
  validates :text, presence: true
end
