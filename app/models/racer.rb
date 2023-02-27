# require 'addressable/uri'

class Racer < ApplicationRecord
  validates :name, presence: true
  validates :born_at, presence: true
  validate :born_at do 
    errors.add(:born_at, 'must be at least 18') unless born_at.nil? || born_at < 18.years.ago
  end 
  # validates :image_url, format: { with: URI::DEFAULT_PARSER.make_regexp }
end
