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

FactoryBot.define do
  factory :bank_reconciliation do
    financial_transaction { nil }
    fitid { "MyString" }
    bank_amount { "9.99" }
    reconciled_at { "2026-08-17 21:14:12" }
  end
end
