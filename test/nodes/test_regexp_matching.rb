require 'helper'
require 'farel/nodes/regexp_matching'

module MiniTest
  module Assertions
    def assert_is_binary_node_class(nodeclass)
      n = nodeclass.new(:something_left, :something_right)
      n.left.must_equal :something_left
      n.right.must_equal :something_right
    end
  end
  module Expectations
    infect_an_assertion :assert_is_binary_node_class, :must_be_binary_node_class
  end
end

module Farel
  module Nodes
    module RegexpMatching
      describe "MatchesRegexp" do it "is a binary node" do
        MatchesRegexp.must_be_binary_node_class
      end end

      describe "DoesNotMatchRegexp" do it "is a binary node" do
        DoesNotMatchRegexp.must_be_binary_node_class
      end end

      describe "MatchesRegexpI" do it "is a binary node" do
        MatchesRegexpI.must_be_binary_node_class
      end end

      describe "DoesNotMatchRegexpI" do it "is a binary node" do
        DoesNotMatchRegexpI.must_be_binary_node_class
      end end
    end
  end
end
