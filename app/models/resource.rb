class Resource < ApplicationRecord
  validates_presence_of :title, :message => "is required"
  validates_presence_of :link, :message => "is required"
  validates_presence_of :category, :message => "is required"
  validates_presence_of :source, :message => "is required"
end
