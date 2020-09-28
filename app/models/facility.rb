class Facility < ApplicationRecord
    has_many :doctors
    has_many :patients, through: :doctors
    belongs_to :administrator
end
