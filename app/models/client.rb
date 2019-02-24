class Client < ApplicationRecord
  validates :first_name, presence: true if: { lambda { business_name.empty? } }
  validates :business_name, presence: true if: { lambda { first_name.empty? } }
  validates :email, presence: true
end
