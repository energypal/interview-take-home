# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  customer_id :integer          not null
#  country     :string(2)
#  system_size :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Project < ApplicationRecord
  # Represents a solar project from a customer

  belongs_to :customer
  has_many :quotes

  # Country the project is located in
  enum country: {
    us: 'us', # United States
    ca: 'ca', # Canada
  }, _prefix: true

  # Rough size of the project
  enum system_size: {
    small:  1,
    medium: 2,
    large:  3,
  }, _prefix: true

  validates :customer, :country, :system_size, presence: true
end
