class Doctor < ApplicationRecord
    has_many :patients
    belongs_to :facility

    validates :name, presence: true
    validates :age, numericality: { only_integer: true }
    validates :age, numericality: { greater_than: 23 }
    validates :specialty, inclusion: { in: %w(disturbed smoking amnesia hallucinogenic)}
    validates :status, inclusion: { in: %w(healthy warning incompacitated)}
end
