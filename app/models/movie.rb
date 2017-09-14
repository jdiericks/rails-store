class Movie < ActiveRecord::Base
    def poster
    "https://images-na.ssl-images-amazon.com/images/M/#{poster_url}"
    end

  def imdb
    "http://www.imdb.com/title/#{imdb_id}/"
  end
end
