class Party < ActiveRecord::Base
  has_many :politicians
  attr_accessible :name, :hex_colour, :image_file_name, :image_content_type, :image_file_size, :image_updated_at, :website
end
