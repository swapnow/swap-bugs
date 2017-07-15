# == Schema Information
#
# Table name: errors
#
#  id         :integer          not null, primary key
#  component  :string
#  code       :integer
#  body       :string
#  resolved   :boolean          default("false")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  which_end  :string
#

require 'test_helper'

class ErrorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
