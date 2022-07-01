# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string(100)
#  email      :string(320)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Customer < ApplicationRecord
  # Represents a consumer interested in solar quotes
  
  has_many :projects
  
  validates :name, :email, presence: true
  validates :name, length: { in: 2..100 }
  validates :email, length: { in: 5..320 }
end
