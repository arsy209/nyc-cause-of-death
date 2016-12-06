require 'pry'

class SuperDeath
  attr_reader :deaths
  def initialize(args={})
    @deaths = args.fetch(:deaths, [])
  end

  def get_deaths_by_ethnicity(search_ethnicity)
    deaths.select {|death| death.ethnicity == search_ethnicity}
  end

  def search_by_sex(sex)
    deaths.select {|death| death.sex == sex.upcase}
  end


  def search_by_year(year)
    count = deaths.select {|death| year == death.year}
    count.length
  end


end
