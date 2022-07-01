# == Schema Information
#
# Table name: quotes
#
#  id           :integer          not null, primary key
#  project_id   :integer          not null
#  installer_id :integer          not null
#  price        :decimal(10, 2)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Quote < ApplicationRecord
  # Represents a quote for a solar project on behalf of an installer
  
  belongs_to :project
  belongs_to :installer

  validates :project, :installer, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
