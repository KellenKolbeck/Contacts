class Emails

  def initialize(attributes)
    @email = attributes.fetch(:email).downcase
  end

  def email
    unless @email.split("").include?("@") && @email.split("")[-4] == "."
      return  "You didn't enter your email correctly."
    end
    @email
  end
end
