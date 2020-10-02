class Facility < ApplicationRecord
    has_many :doctors
    has_many :patients, through: :doctors
    belongs_to :administrator

    validates :status, inclusion: { in: %w(safe warning unsafe blackout)} 
end
