class Emails

@@emails_list = []

  def initialize(attributes)
    @email = attributes.fetch(:email).downcase
  end

  def email
    unless @email.split("").include?("@") && @email.split("")[-4] == "."
      return  "You didn't enter your email correctly."
    end
    @email
  end

  define_singleton_method(:all) do
    @@emails_list
  end

  define_singleton_method(:clear) do
    @@emails_list = []
  end

  def save
    @@emails_list.push(self)
  end

end
