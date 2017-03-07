require 'pry'
module InformationParser
  def self.parse(url)
    data = JSON.parse(open(url).read)
    deaths = []
    data.each do |death|
      deaths << Death.new(death)
    end
    super_death = SuperDeath.new(deaths: deaths)
  end
end
