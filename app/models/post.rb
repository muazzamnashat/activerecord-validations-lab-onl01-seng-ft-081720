class Post < ActiveRecord::Base
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  include ActiveModel::Validations
  validates_with TitleValidator
end
