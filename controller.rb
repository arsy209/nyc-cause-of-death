class Controller
  attr_reader :url, :klass, :super_klass, :view
  attr_accessor :deaths

  def initialize(args)
    @url = args.fetch(:url)
    @view = args.fetch(:view)
    @deaths = []
  end

  def run
    @deaths = InformationParser.parse(url)
    puts "Hello🙋🏽, Welcome to our death page, It's really scary 👻 👻 👻 . \n BE SCARED 💀💀💀!!!\n\n\n".upcase
    View.display_question("Would you like to find a death by year, ethnicity, or gender?")
    answer = gets.chomp.downcase
    if answer == "ethnicity"
      search_ethnicity
    elsif answer == "gender"
      search_sex
    elsif answer == "year"
      search_year
    else
      puts "BRO!!!! That's not a valid answer. 🤔"
    end
  end

  def search_ethnicity
    View.display_question("Enter the ethnicity you'd like to search by? 👦🏻 👦🏼 👦 👦 👦 👦🏾 👦🏿")
    search_for_ethnicity = gets.chomp.upcase
    View.display_deaths(deaths.get_deaths_by_ethnicity(search_for_ethnicity))
  end

  def search_sex
    View.display_question("Enter the gender you would like to search by 💃🏽 or 🙇🏻 ")
    search_for_sex = gets.chomp.upcase
    View.display_deaths(deaths.search_by_sex(search_for_sex))
  end

  def search_year
    View.display_question("Enter the year you'd like to search by")
    search_for_year = gets.chomp
    amount = deaths.search_by_year(search_for_year)
    puts "In the year #{search_for_year} there were #{amount}! 😭 💀 "
  end
end
