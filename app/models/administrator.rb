class Administrator < ApplicationRecord
    has_many :facilities

    has_secure_password
    validates :name, presence: true
    validates :user_name, presence: true
    validates :password, length: { in: 6..20 }
    validates :status, inclusion: { in: %w(healthy warning incompacipated)}
end
