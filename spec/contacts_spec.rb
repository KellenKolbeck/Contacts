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

  describe('.sorted') do
    it('sorts the list of contacts by last name') do
      test_name = Contacts.new({:full_name => "ricky bobby", :job => "race car driver", :company => "Wonderbread racing"})
      test_name.save()
      test_name_1 = Contacts.new({:full_name => "cal naughton", :job => "race car driver", :company => "Old Spice racing"})
      test_name_1.save()
      test_name_2 = Contacts.new({:full_name => "sacha cohen", :job => "race car driver", :company => "Perrier racing"})
      test_name_2.save()
      Contacts.sorted
      expect(Contacts.all).to(eq([test_name, test_name_2, test_name_1]))
    end
  end

end
