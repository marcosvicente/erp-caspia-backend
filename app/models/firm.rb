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

class Firm < ApplicationRecord
end
