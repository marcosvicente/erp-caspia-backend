# == Schema Information
#
# Table name: monthly_closings
#
#  id               :uuid             not null, primary key
#  organization_id  :uuid             not null
#  reference_period :string
#  status           :string
#  closed_at        :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_monthly_closings_on_organization_id  (organization_id)
#

require 'rails_helper'

RSpec.describe MonthlyClosing, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
