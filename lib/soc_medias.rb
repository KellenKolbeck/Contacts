class SocialMedias

  @@all_soc_medias = []

  attr_reader :facebook, :linked_in

  def initialize(attributes)
    @facebook = attributes.fetch(:facebook)
    @linked_in = attributes.fetch(:linked_in)
  end

  define_singleton_method(:all) do
    @@all_soc_medias
  end

  define_singleton_method(:clear) do
    @@all_soc_medias = []
  end

  def save
    @@all_soc_medias << self
  end

end
