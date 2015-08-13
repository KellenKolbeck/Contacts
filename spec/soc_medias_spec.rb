require('rspec')
require('soc_medias')

describe(SocialMedias) do


  describe('#facebook') do
    it("returns a facebook id") do
      test_fb = SocialMedias.new({:facebook => "andrew.haupt.7", :linked_in => "andrewhaupt2015"})
      expect(test_fb.facebook).to(eq("andrew.haupt.7"))
    end
  end

  describe('#linked_in') do
    it("returns a linked in id") do
    test_linked_in = SocialMedias.new({:facebook => "andrew.haupt.7", :linked_in => "andrewhaupt2015"})
      expect(test_linked_in.linked_in).to(eq("andrewhaupt2015"))
    end
  end

  describe('.all') do
    it("returns an empty array") do
      expect(SocialMedias.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves contact email") do
      test_fb = SocialMedias.new({:facebook => "andrew.haupt.7", :linked_in => "andrewhaupt2015"})
      test_fb.save()
      expect(SocialMedias.all()).to(eq([test_fb]))
    end
  end

  describe('.clear') do
    it("clears contact email from array") do
      test_fb = SocialMedias.new({:facebook => "andrew.haupt.7", :linked_in => "andrewhaupt2015"})
      test_fb.save()
      SocialMedias.clear
      expect(SocialMedias.all()).to(eq([]))
    end
  end

end
