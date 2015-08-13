require('rspec')
require('contacts')
require('addresses')
require('emails')
require('phones')
require('soc_medias')
require('pry')

describe(Contacts) do
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
end
