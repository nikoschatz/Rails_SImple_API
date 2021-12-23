class Delivery < ApplicationRecord
  belongs_to :user

  validates :title, :price, :pickup_location, :delivery_location, :size, :currency, :country_code, presence: true

  enum size: { xs: 1, s: 2, m: 3, l: 4, xl: 5 }
  enum status: { failed: -1, pending: 0, sent: 1 }
end
