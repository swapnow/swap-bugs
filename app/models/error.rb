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

class Error < ApplicationRecord
  validates :which_end, inclusion: { in: ["frontend", "backend"] }
end
