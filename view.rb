module View

  def self.display_question(question)
    puts "#{question}"
  end
  
  def self.display_deaths(deaths)
    if deaths.count == 0
      puts "There are no deaths present"
    end
    deaths.each do |death|
      puts "The year of #{death.year} had these deaths:\n Gender: #{death.sex} \n Ethnicity: #{death.ethnicity} \n Death Count:#{death.count} \n Death Percentage:#{death.percent} \n Cause of Death: #{death.cause_of_death}\n \n"
    end
  end
end
