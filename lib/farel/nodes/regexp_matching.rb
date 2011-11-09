module Farel
  module Nodes
    module RegexpMatching
      %w[
        MatchesRegexp
        DoesNotMatchRegexp
        MatchesRegexpI
        DoesNotMatchRegexpI
      ].each do |classname|
        const_set classname, Class.new(Arel::Nodes::Binary)
      end
    end
  end
end
