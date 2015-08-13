require('rspec')
require('emails')

describe(Emails) do

  describe('#email') do
    it("returns an email address") do
      test_email = Emails.new({:email => "AJHAupt7@gmail.com"})
      expect(test_email.email).to(eq("ajhaupt7@gmail.com"))
    end
  end

  describe('#error') do
    it("returns message if no @ sign or .com is present") do
      test_email = Emails.new({:email => "AJHAupt7gmail.com"})
      test_email_1 = Emails.new({:email => "AJHAupt7@gmailcom"})
      expect(test_email.email).to(eq("You didn't enter your email correctly."))
      expect(test_email_1.email).to(eq("You didn't enter your email correctly."))
    end
   end

  describe('.all') do
    it("returns an empty array") do
      expect(Emails.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves contact email") do
      test_email = Emails.new({:email => "AJHAupt7@gmail.com"})
      test_email.save()
      expect(Emails.all()).to(eq([test_email]))
    end
  end

  describe('.clear') do
    it("clears contact email from array") do
      test_email = Emails.new({:email => "AJHAupt7@gmail.com"})
      test_email.save()
      Emails.all().clear()
      expect(Emails.all()).to(eq([]))
    end
  end
end
