class Project < ApplicationRecord
  validates :name, presence: true

  belongs_to :client

  has_many :transactions, dependent: :destroy
end
