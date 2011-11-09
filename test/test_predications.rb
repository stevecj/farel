require 'helper'
require 'farel/nodes/regexp_matching'
require 'farel/predications'

module Farel
  class StubWithPredications
    include Predications
  end

  describe "Predecations" do
    before do
      @stub = StubWithPredications.new
    end

    describe "#matches_regexp" do
      it "creates a MatchesRegexp, given a non-Regexp argument" do
        result = @stub.matches_regexp :something_other
        result.must_be_kind_of Nodes::RegexpMatching::MatchesRegexp
        result.left.must_equal @stub
        result.right.must_equal :something_other
      end
    end
  end
end
