class Post < ApplicationRecord
    has_attached_file :photo, styles: { large:  "720x720>", medium: "640x640>", thumb:  "128x128>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
    validates :photo, attachment_presence: true
    validates :description, presence: true
  end