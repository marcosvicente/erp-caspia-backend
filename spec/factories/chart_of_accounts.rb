# == Schema Information
#
# Table name: chart_of_accounts
#
#  id              :uuid             not null, primary key
#  organization_id :uuid             not null
#  code            :string
#  name            :string
#  account_type    :string
#  accounting_code :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_chart_of_accounts_on_organization_id  (organization_id)
#

FactoryBot.define do
  factory :chart_of_account do
    organization { nil }
    code { "MyString" }
    name { "MyString" }
    account_type { "MyString" }
    accounting_code { "MyString" }
  end
end
