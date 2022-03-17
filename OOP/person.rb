class Person
  @@users = 0 #Class Variable

  #it behaves like Constructor, it is always private
  def initialize(name, email, password)
    #Instance variables
    @name = name
    @email = email
    @password = password
    @@users+=1
  end

  #========Accessors=========
  def get_name()
    return @name
  end

  def get_email()
    return @email
  end

  def get_password()
    return @password
  end

  #=======Setters==========
  def set_name(name)
    @name = name
  end

  def set_email(email)
    @email = email
  end

  def set_password(password)
    @password = password
  end

  #===========Instance Methods/Behaviours=============
  def to_s()
    return "%-20s: %-20s\n%-20s: %-20s\n%-20s: %-20s\n" % ["Name", @name,
      "Email", @email, "Password",   "*"*@password.length]
  end
end
