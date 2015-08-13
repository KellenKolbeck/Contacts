require('rspec')
require('phones')

describe(Phones) do
  describe('#area_code') do
    it("formats a contact's area code") do
      test_number = Phones.new({:area_code => "605", :number => "2311231", :type => "home"})
      expect(test_number.area_code()).to(eq("(605)"))
    end
  end

  describe('#number') do
    it("returns second part of number") do
      test_number = Phones.new({:area_code => "605", :number => "2311231", :type => "home"})
      expect(test_number.number()).to(eq("231-1231"))
    end
  end

  describe('#full_number') do
    it("formats a contact's phone number") do
      test_number = Phones.new({:area_code => "605", :number => "2311231", :type => "home"})
      expect(test_number.full_number()).to(eq("(605) 231-1231"))
    end
  end

  describe('#type') do
    it("formats the type of contact's phone number") do
      test_number = Phones.new({:area_code => "605", :number => "2311231", :type => "home"})
      expect(test_number.type()).to(eq("Home"))
    end
  end

  describe('.all') do
    it("initially returns an empty array") do
      expect(Phones.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a contact's phone number") do
      test_number = Phones.new({:area_code => "605", :number => "2311231", :type => "home"})
      test_number.save()
      expect(Phones.all()).to(eq([test_number]))
    end
  end
end
