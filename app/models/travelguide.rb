class Travelguide < ApplicationRecord
  validates :admin_id, presence: true
  validates :admin_id, numericality: true
  validates :admin_id, presence: true
  validates :blog_title, presence: true
  validates :blog_desc, presence: true
  validates :blog_content, presence: true
end
