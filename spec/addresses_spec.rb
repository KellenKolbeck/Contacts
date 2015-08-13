require('rspec')
require('addresses')

describe(Addresses) do
  describe('#street') do
    it("shows the contact's street address") do
      test_address = Addresses.new({:street => "8324 SE rhine sT.", :city => "Portland", :state => "OR", :zip => "97266", :type => "Home"})
      expect(test_address.street()).to(eq("8324 Se Rhine St"))
    end
  end

  describe('#city') do
    it("shows the contact's city") do
      test_address = Addresses.new({:street => "8324 SE rhine St.", :city => "portland", :state => "OR", :zip => "97266", :type => "Home"})
      expect(test_address.city()).to(eq("Portland"))
    end
  end

  describe('#state') do
    it("shows the contact's state") do
      test_address = Addresses.new({:street => "8324 SE rhine St.", :city => "Portland", :state => "oR", :zip => "97266", :type => "Home"})
      expect(test_address.state()).to(eq("OR"))
    end
  end

  describe('#zip') do
    it("shows the contact's zipcode") do
      test_address = Addresses.new({:street => "8324 SE rhine St.", :city => "Portland", :state => "OR", :zip => "97266", :type => "Home"})
      expect(test_address.zip()).to(eq("97266"))
    end
  end

  describe('#type') do
    it("shows the contact's address type") do
      test_address = Addresses.new({:street => "8324 SE rhine St.", :city => "Portland", :state => "OR", :zip => "97266", :type => "home"})
      expect(test_address.type()).to(eq("Home"))
    end
  end

end
