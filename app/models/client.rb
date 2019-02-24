class Client < ApplicationRecord
  validates :first_name, presence: true, unless: :business_name
  validates :business_name, presence: true, unless: :first_name
  validates :email, presence: true

  has_many :projects, dependent: :destroy

  def display_name
    return business_name if business_name
    [first_name, last_name].compact.join(" ")
  end
end
