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
      test_name = Contacts.new({:full_name => "Ricky Bobby"})
      expect(test_name.full_name()).to(eq("Ricky Bobby"))
    end
  end

  describe('#first_name') do
    it("displays the contacts first name") do
      test_name = Contacts.new({:full_name => "Ricky Bobby"})
      expect(test_name.first_name()).to(eq("Ricky"))
    end
  end

  describe('#last_name') do
    it("displays the contacts last name") do
      test_name = Contacts.new({:full_name => "Ricky Bobby"})
      expect(test_name.last_name()).to(eq("Bobby"))
    end
  end
end
