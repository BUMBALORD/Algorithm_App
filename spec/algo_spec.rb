require 'spec_helper'
require 'rails_helper'

RSpec.describe Algo, "#algo" do
  context "from creation of new algorithm" do

    it "should have a name and an algorithm" do
      algo = Algo.new
      algo.name = "fizzyBuzz"
      algo.algorithm = "Make a soda go boom"
      expect(algo.name).to eq "fizzyBuzz"
      expect(algo.algorithm).to eq "Make a soda go boom"
    end

    it "should be able to be set as a favorite" do
      algo = Algo.new
      algo.fav = true
      expect(algo.fav).to eq true
    end

  end
end
