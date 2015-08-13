class Addresses

@@all_addresses = []

  attr_reader :street, :city, :state, :zip, :type

  def initialize(attributes)
    @street = attributes.fetch(:street).split.map{|chunk| chunk.capitalize}.join(" ")
    @street.chop! if @street[-1] == "."
    @city = attributes.fetch(:city).split.map{|chunk| chunk.capitalize}.join(" ")
    @state = attributes.fetch(:state).upcase
    @zip = attributes.fetch(:zip)
    @type = attributes.fetch(:type).capitalize
  end

  define_singleton_method(:all) do
    @@all_addresses
  end

  define_singleton_method(:clear) do
    @@all_addresses = []
  end

  def save
    @@all_addresses.push(self)
  end

  def city_state_zip
    "#{@city}, #{@state} #{@zip}"
  end




end
