class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  protected

  def to_slug(string)
    string.parameterize
  end
end
