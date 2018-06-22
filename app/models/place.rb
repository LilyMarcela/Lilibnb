class Place < ApplicationRecord
    belongs_to :type
    belongs_to :location
    has_many :place_users
    has_many :users, :through => :place_users
    belongs_to :host, class_name: 'User', foreign_key: :host_id


    def available?(date = Date.today)
        PlaceUser.where(place_id: id)
        .where("? BETWEEN date_start AND date_end", date).none?
    end
end