# == Schema Information
#
# Table name: activities
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  difficulty  :integer
#  name        :string
#  schedule    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  venue_id    :bigint(8)
#
# Indexes
#
#  index_activities_on_venue_id  (venue_id)
#
# Foreign Keys
#
#  fk_rails_...  (venue_id => venues.id)
#

class Activity < ApplicationRecord
  belongs_to :venue
  has_and_belongs_to_many :categories

  enum difficulty: %i(low medium high)

  scope :by_name, -> { order(:name) }

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :schedule, presence: true
  validates :difficulty, presence: true
end
