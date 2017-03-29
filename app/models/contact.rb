class Contact < ApplicationRecord
  belongs_to :kind

  has_one :address, inverse_of: :contact, dependent: :destroy
  accepts_nested_attributes_for :address

  has_many :phones, inverse_of: :contact, dependent: :destroy
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true
  
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true
end
