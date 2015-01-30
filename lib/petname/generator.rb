require "petname/version"

module PetName
  class Generator
    def initialize(options={})
      opt = {
        adjectives: File.join(File.dirname(__FILE__), "adjectives.txt"),
        adverbs:    File.join(File.dirname(__FILE__), "adverbs.txt"),
        names:      File.join(File.dirname(__FILE__), "names.txt")
      }.merge(options)

      @adjectives = open_to_split opt[:adjectives]
      @adverbs = open_to_split opt[:adverbs]
      @names = open_to_split opt[:names]
    end

    def generate(options={})
      opt = {words: 2, separator: "-"}.merge(options)

      raise ArgumentError, "words must be greater or equal 1" if opt[:words] < 1

      name = ""

      if opt[:words] > 2
        name << @adverbs.sample(opt[:words] - 2).join(opt[:separator]) + opt[:separator]
      end

      if opt[:words] > 1
        name << @adjectives.sample + opt[:separator]
      end

      name << @names.sample
    end

    private
    def open_to_split(filepath)
      open(filepath).read.split("\n")
    end
  end
end
