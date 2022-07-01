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
require "test_helper"

class QuoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
