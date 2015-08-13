class Phones

@@all_numbers = []

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

  define_singleton_method (:all) do
    @@all_numbers
  end

  def save
    @@all_numbers.push(self)
  end

  def edit_area_code
  end

  def edit_number
  end

  def edit_type
  end

  define_singleton_method(:clear) do
    @@all_numbers = []
  end
end
