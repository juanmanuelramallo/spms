class Project < ApplicationRecord
  validates :name, presence: true

  belongs_to :client, optional: true

  has_many :transactions, dependent: :destroy
end
