class Website < ApplicationRecord
  validates :title, presence: true
  validates :link, presence: true # Need to add validation for http:// to make sure it's a valid link (or maybe this is a check that happens presave)
  validates :description, presence: true
end
