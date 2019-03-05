class Team < ApplicationRecord
  after_create :add_slug

  def to_param
    slug
  end

  private

  def add_slug
    update(slug: to_slug(name))
  end
end
