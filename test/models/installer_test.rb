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
require "test_helper"

class InstallerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
