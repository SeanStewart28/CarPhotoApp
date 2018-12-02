class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  has_attached_file :image, styles: {large: "500x500>", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
