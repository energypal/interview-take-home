# == Schema Information
#
# Table name: installers
#
#  id         :integer          not null, primary key
#  name       :string
#  active     :boolean          default(TRUE), not null
#  country    :string(2)        not null
#  pricing    :integer          default("medium"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Installer < ApplicationRecord
  # Represents a solar installer capable of providing quotes for solar projects

  has_many :quotes

  # Country the installer is operates in
  enum country: {
    us: 'US', # United States
    ca: 'CA', # Canada
  }, _prefix: true
  
  # How the installer prices projects
  enum pricing: {
    low:    1,
    medium: 2,
    high:   3,
  }, _prefix: true
  
  validates :name, :active, :country, :pricing, presence: true
end
