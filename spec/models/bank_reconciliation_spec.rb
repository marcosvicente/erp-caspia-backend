# == Schema Information
#
# Table name: bank_reconciliations
#
#  id                       :uuid             not null, primary key
#  financial_transaction_id :uuid             not null
#  fitid                    :string
#  bank_amount              :decimal(, )
#  reconciled_at            :datetime
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
# Indexes
#
#  index_bank_reconciliations_on_financial_transaction_id  (financial_transaction_id)
#

require 'rails_helper'

RSpec.describe BankReconciliation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
