module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
     def set_defaults
   "http://placehold.it/#{height}x#{width}"
  end
end
end