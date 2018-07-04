class Post < ApplicationRecord
  has_attached_file :photo, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates :photo, attachment_presence: true
  validates :description, presence: true

  belongs_to :user
end
