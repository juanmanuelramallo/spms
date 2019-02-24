class TransactionCode < ApplicationRecord
  validates :name, presence: true

  monetize :default_amount_cents
end
