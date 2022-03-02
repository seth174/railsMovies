class Movie < ApplicationRecord
    has_many :reviews

    validates :title, presence: true
    validates :description, presence: true
    validates :release_year, presence: true
    validates :parental_rating, presence: true
end
