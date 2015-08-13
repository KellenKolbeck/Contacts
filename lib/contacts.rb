class Contacts

  @@all_contacts = []

  attr_reader(:full_name, :first_name, :last_name, :job, :company, :id, :phone, :email, :soc_media, :address)

  define_method(:initialize) do |attributes|
    @full_name = attributes.fetch(:full_name).split.each{|word| word.capitalize!}.join(" ")
    @first_name = @full_name.split
    @first_name = @first_name[0]
    @last_name = @full_name.split
    @last_name = @last_name[1]
    @job = attributes.fetch(:job).split.each{|word| word.capitalize!}.join(" ")
    @company = attributes.fetch(:company).split.each{|word| word.capitalize!}.join(" ")
    @id = @@all_contacts.length() + 1
    @phone = []
    @email = []
    @soc_media = []
    @address = []

  end

  def save
    @@all_contacts << self
  end

  define_singleton_method(:all) do
    @@all_contacts
  end

  define_singleton_method(:clear) do
    @@all_contacts = []
  end

  define_singleton_method(:find) do |identification|
    found_contact = nil
    @@all_contacts.each do |contact|
      if contact.id == identification
        found_contact = contact
      end
    end
    found_contact
  end

  define_singleton_method(:sorted) do
    @@all_contacts.sort!{|a,b| a.last_name <=> b.last_name}
  end

  def add_phone(number)
    @phone << number
  end

  def add_email(email_address)
    @email << email_address
  end

  def add_soc_media(social)
    @soc_media << social
  end

  def add_address(address_name)
    @address << address_name
  end


end
