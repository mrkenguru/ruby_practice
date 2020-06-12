class Animal

  # attr_accessor :noise    <==    attr_reader :noise + attr_writer :noise

  attr_reader :noise
  # def noise
  #   $noise
  # end

  attr_writer :noise
  # def noise=(noise = "Oink!")
  #   $noise = noise
  # end

  def initialize(options = {})
    self.noise = options[:noise] || "Grrr!"
    puts "New animal instantiated"
  end

end

