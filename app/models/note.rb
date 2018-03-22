class Note
  include Mongoid::Document
  include Mongoid::Taggable
  
  field :title, type: String
  field :body, type: String
  # field :tags, type: Array

  belongs_to :user
  validates_presence_of :title,:body
end
