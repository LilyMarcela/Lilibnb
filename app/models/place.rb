class Place < ApplicationRecord
    belongs_to :type
    belongs_to :location
    has_many :place_users
    has_many :users, :through => :place_users
    belongs_to :host, class_name: 'User', foreign_key: :host_id

end