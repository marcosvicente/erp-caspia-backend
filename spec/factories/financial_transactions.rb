# == Schema Information
#
# Table name: financial_transactions
#
#  id                  :uuid             not null, primary key
#  organization_id     :uuid             not null
#  chart_of_account_id :uuid             not null
#  transaction_type    :string
#  amount              :decimal(, )
#  due_date            :date
#  payment_date        :date
#  status              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_financial_transactions_on_chart_of_account_id  (chart_of_account_id)
#  index_financial_transactions_on_organization_id      (organization_id)
#

FactoryBot.define do
  factory :financial_transaction do
    organization { nil }
    chart_of_account { nil }
    transaction_type { "MyString" }
    amount { "9.99" }
    due_date { "2026-08-17" }
    payment_date { "2026-08-17" }
    status { "MyString" }
  end
end
