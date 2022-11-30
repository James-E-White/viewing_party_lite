require "./app/poros/movie"
require "./app/services/tmdb_service"

class MovieSearch
  def movie(id)
    data = service.movie_details(id)
    Movie.new(data)
  end

  def service 
    TmdbService.new
  end
end