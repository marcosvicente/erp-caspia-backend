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

class Organization < ApplicationRecord
  belongs_to :firm
end
