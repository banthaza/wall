class GetCountries
  prepend SimpleCommand

  def initialize()
  end

  def call()
    Country.all
  end

end