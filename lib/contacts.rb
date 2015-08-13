class Contacts

  attr_reader(:full_name, :first_name, :last_name)

  define_method(:initialize) do |attributes|
    @full_name = attributes.fetch(:full_name)
    @first_name = @full_name.split
    @first_name = @first_name[0]
    @last_name = @full_name.split
    @last_name = @last_name[1]
  end

end
