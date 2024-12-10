# frozen_string_literal: true

# ApplicationHelper provides helper methods for views.
class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id', dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validate :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def recent_posts
    post.order(created_at(:desc)).limit(5)
  end

  def recent_comments
    comments.order(created_at(:desc)).liimit(3)
  end

  def recent_likes
    recent.like(created_at(:desc)).limit(3)
  end

  def likes?(post)
    likes.exists?(post_id: post.id)
  end

  def admin?
    role == 'admin'
  end
end
