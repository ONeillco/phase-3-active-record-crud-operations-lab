require 'pry'
class Movie < ActiveRecord::Base

  def self.find_all_movies_by_year(year)
    Movie.where(year: year)
  end

  def self.create_with_title(title)
    self.create(title: title)
  end

  def self.first_movie
    self.first
  end

  def self.last_movie
    self.last
  end

  def self.movie_count
    self.count
  end

  def self.find_movie_with_id(id)
    self.find_by_id(id)
  end

  def self.find_movie_with_attributes(attributes)
    self.find_by(attributes)
  end

  def self.find_movies_after_2002
    self.where('release_date > 2002')
  end
   
    def update_with_attributes(dingo)
      self.update(dingo)
  end

  def self.update_all_titles(dingo)
    self.update(title: dingo)
  end

  def self.delete_by_id(dingo)
    self.destroy(dingo)
  end

  def self.delete_all_movies
    self.delete_all
  end

end