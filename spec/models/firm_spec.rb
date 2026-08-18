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

require 'rails_helper'

RSpec.describe Firm, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
