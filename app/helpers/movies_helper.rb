module MoviesHelper
  def get_average_rating(movie)
  if movie.reviews.length == 0
    return "N/A"
  end
  sum = 0.0
  movie.reviews.each do |r|
    sum += r.rating
  end
    sum / movie.reviews.length
  end

  def options
    @options1 = {}
    user = current_user
    if user
      @options1[user.name] = user.id
    end


    @options2 = {}
    movie = Movie.all
    if movie
      movie.each do |m|
        @options2[m.title] = m.id
      end
    end
  end
end
