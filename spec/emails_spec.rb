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

end
