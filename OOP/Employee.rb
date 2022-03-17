require_relative "person"
class Employee < Person
  @@employees = 0
  def initialize(name, email, password, yearsExperience)
    super(name, email, password)
    @yearsExperience = yearsExperience
    @salary = calc_salary()
    @@employees+=1
  end

  #=======Instance Methods==========
  def calc_salary()
    if @yearsExperience > 5
      return 100000
    else
      return 10000
    end
  end

  #now we will make this method private
  private :calc_salary

  #to_s method
  def to_s()
    info = super.to_s
    info = info<<"%-20s: %-5s\n%-20s: %-5s\n" % ["Years Of Experience",
      @yearsExperience, "Salary", @salary]
  end

  def self.total_users()
    return @@employees
  end

end


