class Phone < ApplicationRecord
  belongs_to :contact, inverse_of: :phones
end
