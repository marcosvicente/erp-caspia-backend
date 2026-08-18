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

FactoryBot.define do
  factory :monthly_closing do
    id { "" }
    organization { nil }
    reference_period { "MyString" }
    status { "MyString" }
    closed_at { "2026-08-17 21:14:29" }
  end
end
