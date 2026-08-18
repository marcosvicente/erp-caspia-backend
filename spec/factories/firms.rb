# == Schema Information
#
# Table name: firms
#
#  id           :uuid             not null, primary key
#  company_name :string
#  cnpj         :string
#  crc_number   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_firms_on_cnpj  (cnpj) UNIQUE
#

FactoryBot.define do
  factory :firm do
    company_name { "MyString" }
    cnpj { "MyString" }
    crc_number { "MyString" }
  end
end
