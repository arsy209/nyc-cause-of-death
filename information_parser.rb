require 'pry'
module InformationParser

  def self.parse(url)
    # binding.pry
  # json_string_response = open(url).read
  # deaths_array = JSON.parse(json_string_response).map do |death|
  #   klass.new(death)
  #   end
  #   super_klass.new(deaths: deaths_array)
  # end
    data = JSON.parse(open(url).read)
    deaths = []
    data.each do |death|
      deaths << Death.new(death)
    end
    super_death = SuperDeath.new(deaths: deaths)
    # binding.pry
  end

end
