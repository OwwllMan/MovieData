class SearchMovies
  
  require 'dotenv'
  Dotenv.load
  Tmdb::Api.key(ENV['SECRET_KEY'])

require 'uri'
require 'net/http'

url = URI("https://api.themoviedb.org/3/movie/%7Bmovie_id%7D?language=en-US&api_key=91542f7ab4f84212a3f540a81396783f")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request.body = "{}"

response = http.request(request)
  def perform(title)
    @search = Tmdb::Search.new
    @search.resource('movie') # determines type of resource
    @search.query(title) # the query to search against
  end
end