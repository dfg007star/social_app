class Post < ApplicationRecord
    belongs_to :user, optional: false
    validates :user_id, presence: true
    validates :title, presence: true, length: { maximum: 30 }
    validates :content, presence: true, length: { maximum: 140 }
    default_scope -> { order(created_at: :desc) }
end
