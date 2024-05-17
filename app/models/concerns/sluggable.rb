module Sluggable
  extend ActiveSupport::Concern

  included do
    before_save :generate_slug
  end

  def to_param
    slug
  end

  def generate_slug
    self.slug = title.parameterize
  end
end