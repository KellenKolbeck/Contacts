class Addresses

  attr_reader :street, :city, :state, :zip, :type

  def initialize(attributes)
    @street = attributes.fetch(:street).split.each{|chunk| chunk.capitalize!}.join(" ")
    @street.chop! if @street[-1] == "."
    @city = attributes.fetch(:city).split.each{|chunk| chunk.capitalize!}.join(" ")
    @state = attributes.fetch(:state).upcase!
    @zip = attributes.fetch(:zip)
    @type = attributes.fetch(:type).capitalize
  end

end
