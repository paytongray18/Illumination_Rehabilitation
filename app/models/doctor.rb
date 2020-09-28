class Doctor < ApplicationRecord
    has_many :patients
    belongs_to :facility
end
