class Phones

  attr_reader :area_code, :number, :type, :full_number

  def initialize(attributes)
    @area_code = "(#{attributes.fetch(:area_code)})"
    number_array = attributes.fetch(:number).split("")
    first_half = number_array[0..2].join
    second_half = number_array[3..6].join
    @number = "#{first_half}-#{second_half}"
    @full_number = "#{@area_code} #{@number}"
    @type = attributes.fetch(:type).capitalize
  end

end
