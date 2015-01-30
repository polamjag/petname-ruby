require 'spec_helper'

describe PetName do
  it 'has a version number' do
    expect(PetName::VERSION).not_to be nil
  end

  describe PetName::Generator do
    let(:pn) { PetName::Generator.new }

    it "should generate random Petname without arguments" do
      expect( pn.generate ).to match /[a-z]*-[a-z]*/
    end

    it "should use specified separator" do
      expect( pn.generate separator: "===" ).to match /[a-z]*===[a-z]*/
    end

    it "should follow specified number of words" do
      expect( pn.generate words: 10 ).to match /([a-z]*-){9}[a-z]*/
    end

    it "should work with all assigned args" do
      expect( pn.generate separator: "🍣", words: 4 ).to match /([a-z]*🍣)*[a-z]/
    end

    it "should initialized with optional source" do
      expect(
        PetName::Generator.new(
          adjectives: File.join(File.dirname(__FILE__), "test_adjectives.txt"),
          adverbs:    File.join(File.dirname(__FILE__), "test_adverbs.txt"),
          names:      File.join(File.dirname(__FILE__), "test_names.txt")
        )
      ).to be_instance_of( PetName::Generator )
    end
  end
end
