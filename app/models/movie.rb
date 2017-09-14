class Movie < ActiveRecord::Base
    def poster
    "https://images-na.ssl-images-amazon.com/images/M/#{poster_url}"
    end

  def imdb
    "http://www.imdb.com/title/#{imdb_id}/"
  end
  
  def cart_action(current_user_id)
      if $redis.sismember "cart#{current_user_id}", id
        "Remove from"
      else
        "Add to"
      end
  end
end
