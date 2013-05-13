class Episode < ActiveRecord::Base
  attr_accessible :description, :name, :notes, :permalink, :position, :published_at, :tag_list
  acts_as_taggable
end
