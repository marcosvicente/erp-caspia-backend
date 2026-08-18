# == Schema Information
#
# Table name: users
#
#  id              :uuid             not null, primary key
#  organization_id :uuid             not null
#  firm_id         :uuid             not null
#  email           :string
#  role            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email            (email) UNIQUE
#  index_users_on_firm_id          (firm_id)
#  index_users_on_organization_id  (organization_id)
#

class User < ApplicationRecord
  belongs_to :organization
  belongs_to :firm
end
