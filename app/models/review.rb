class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :title, presence: true
  validates :review, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { in: 0..10 }

  def self.search(user_id, movie_id)
    where("user_id = #{user_id} and movie_id = #{movie_id}")
  end

end
