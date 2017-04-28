require "test_case"

class KitchenJobs
  def call input
    outputs = TestCase.parse(input).map(&:call)
    outputs.join "\n"
  end
end
