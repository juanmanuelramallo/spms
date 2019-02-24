class Transaction < ApplicationRecord
  validates :amount_cents, presence: true

  monetize :amount_cents

  belongs_to :project
end
