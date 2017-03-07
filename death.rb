class Death
  attr_reader :year, :ethnicity, :sex, :cause_of_death, :count, :percent

  def initialize(args = {})
    @year = args.fetch('year' , "Empty")
    @ethnicity = args.fetch('ethnicity', "Empty")
    @sex = args.fetch('sex', "Empty")
    @cause_of_death = args.fetch('cause_of_death', "Empty")
    @count = args.fetch('count', "Empty")
    @percent = args.fetch('percent', "Empty")
  end
end
