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
require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
