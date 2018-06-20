class Place < ApplicationRecord
    belongs_to :type
    belongs_to :location

end