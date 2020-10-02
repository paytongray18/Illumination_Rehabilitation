class Patient < ApplicationRecord
    belongs_to :doctor
    belongs_to :ailment

    validates :name, presence: true
    validates :age, numericality: { only_integer: true }
    validates :status, inclusion: { in: %w(healthy warning incompacitated)}
    validates :location, presence: true
end
