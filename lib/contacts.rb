class Contacts

  @@all_contacts = []

  attr_reader(:full_name, :first_name, :last_name, :job, :company, :id)

  define_method(:initialize) do |attributes|
    @full_name = attributes.fetch(:full_name).split.each{|word| word.capitalize!}.join(" ")
    @first_name = @full_name.split
    @first_name = @first_name[0]
    @last_name = @full_name.split
    @last_name = @last_name[1]
    @job = attributes.fetch(:job).split.each{|word| word.capitalize!}.join(" ")
    @company = attributes.fetch(:company).split.each{|word| word.capitalize!}.join(" ")
    @id = @@all_contacts.length() + 1
  end

end
