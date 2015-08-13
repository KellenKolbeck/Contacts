require('rspec')
require('contacts')
require('addresses')
require('emails')
require('phones')
require('soc_medias')
require('pry')

describe(Contacts) do

  before do
    Contacts.clear
  end

  describe('#full_name') do
    it("displays the contacts full name") do
      test_name = Contacts.new({:full_name => "Ricky Bobby", :job => "race car driver", :company => "Wonderbread racing"})
      expect(test_name.full_name()).to(eq("Ricky Bobby"))
    end
  end

  describe('#first_name') do
    it("displays the contacts first name") do
      test_name = Contacts.new({:full_name => "Ricky Bobby", :job => "race car driver", :company => "Wonderbread racing"})
      expect(test_name.first_name()).to(eq("Ricky"))
    end
  end

  describe('#last_name') do
    it("displays the contacts last name") do
      test_name = Contacts.new({:full_name => "Ricky Bobby", :job => "race car driver", :company => "Wonderbread racing"})
      expect(test_name.last_name()).to(eq("Bobby"))
    end
  end

  describe('#job') do
    it("displays the contacts job") do
      test_name = Contacts.new({:full_name => "Ricky Bobby", :job => "race car driver", :company => "Wonderbread racing"})
      expect(test_name.job()).to(eq("Race Car Driver"))
    end
  end

  describe('#company') do
    it("displays the contacts company") do
      test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
      expect(test_name.company()).to(eq("Wonderbread Racing"))
    end
  end

  describe('#id') do
    it("returns a contacts id") do
      test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
      expect(test_name.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('empty before anything is saved') do
      expect(Contacts.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('stores the contacts in an array') do
      test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
      test_name.save()
      expect(Contacts.all()).to(eq([test_name]))
    end
  end

  describe('.clear') do
    it('clears the array') do
      test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
      test_name.save()
      Contacts.clear()
      expect(Contacts.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('finds a contact using the id') do
      test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
      test_name.save()
      test_name_1 = Contacts.new({:full_name => "cal naughton", :job => "race car driver", :company => "Old Spice racing"})
      test_name_1.save()
      expect(Contacts.find(test_name.id)).to(eq(test_name))
    end
  end

  # describe('.sorted') do
  #   it('sorts the list of contacts by last name') do
  #     test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
  #     test_name.save()
  #     test_name_1 = Contacts.new({:full_name => "cal naughton", :job => "race car driver", :company => "Old Spice racing"})
  #     test_name_1.save()
  #     test_name_2 = Contacts.new({:full_name => "sacha cohen", :job => "race car driver", :company => "Perrier racing"})
  #     test_name_2.save()
  #     Contacts.sorted
  #     expect(Contacts.all).to(eq([test_name, test_name_2, test_name_1]))
  #   end
  # end

  describe('#add_phone') do
    it ("adds a phone number to a contact") do
      test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
      test_number = Phones.new({:area_code => "605", :number => "2311231", :type => "home"})
      test_name.add_phone(test_number)
      expect(test_name.phone).to(eq([test_number]))
    end
  end

  describe('#add_email') do
    it ("adds email to a contact") do
      test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
      test_email = Emails.new({:email => "AJHAupt7gmail.com"})
      test_name.add_email(test_email)
      expect(test_name.email).to(eq([test_email]))
    end
  end

  describe('#add_soc_media') do
    it ("adds a social media profile to a contact") do
      test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
      test_soc_media = SocialMedias.new({:facebook => "andrew.haupt.7", :linked_in => "andrewhaupt2015"})
      test_name.add_soc_media(test_soc_media)
      expect(test_name.soc_media).to(eq([test_soc_media]))
    end
  end

  describe('#add_address') do
    it ("adds an address to a contact") do
      test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
      test_address = Addresses.new({:street => "8324 SE rhine St.", :city => "Portland", :state => "OR", :zip => "97266", :type => "Home"})
      test_name.add_address(test_address)
      expect(test_name.address).to(eq([test_address]))
    end
  end


end
