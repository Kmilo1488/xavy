# == Schema Information
#
# Table name: categories
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  has_and_belongs_to_many :activities

  scope :by_name, -> { map{ |c| [c.name, c.id] } }

  validates :name, presence: true, uniqueness: true
end
