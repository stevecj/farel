module Farel
  module Predications
    def matches_regexp(other)
      return Nodes::RegexpMatching::MatchesRegexp.new(self, other)
    end
  end
end
