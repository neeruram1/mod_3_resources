class Resource < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :link
  validates_presence_of :category
  validates_presence_of :source
end
