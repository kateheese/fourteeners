require 'rubygems'
require 'httparty'

class Fourteener
  include HTTParty
  base_uri 'https://colorado-14ers-api.herokuapp.com/api/v1'

  def peaks
    Fourteener.get("/peaks")
  end

  def show_peak(id)
    Fourteener.get("/peaks/#{id}")
  end

  def ranges
    Fourteener.get("/peaks/ranges")
  end

  def show_range(range)
    newRange = range.split(' ').join('%20')
    Fourteener.get("/peaks/ranges/#{newRange}")
  end

  def comma_insert(elevation)
    elevation.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,')
  end
end