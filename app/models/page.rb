class Page < ApplicationRecord
  include FriendlyId
  friendly_id :title, use: [:slugged, :finders]
end
