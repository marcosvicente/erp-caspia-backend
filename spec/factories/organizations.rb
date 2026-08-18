# == Schema Information
#
# Table name: organizations
#
#  id         :uuid             not null, primary key
#  firm_id    :uuid             not null
#  trade_name :string
#  cnpj       :string
#  tax_regime :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_organizations_on_cnpj     (cnpj) UNIQUE
#  index_organizations_on_firm_id  (firm_id)
#

FactoryBot.define do
  factory :organization do
    firm { nil }
    trade_name { "MyString" }
    cnpj { "MyString" }
    tax_regime { "MyString" }
  end
end
