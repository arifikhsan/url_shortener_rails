class Link < ApplicationRecord
  validates :url, presence: true, format: URI::regexp(%w[http https])
  validates_uniqueness_of :slug, on: :create, message: "must be unique"
  validates_length_of :slug, within: 3..255, on: :create, message: "must between 3 and 255 characters"
  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_presence_of :slug, on: :create, message: "can't be blank"
end
