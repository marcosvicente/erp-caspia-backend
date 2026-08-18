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

class BankReconciliation < ApplicationRecord
  belongs_to :financial_transaction
end
