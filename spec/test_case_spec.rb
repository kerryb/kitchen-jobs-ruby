require "test_case"

describe TestCase do
  describe ".parse" do
    it "returns a test case for each one in the input" do
      input = <<~EOF
        3
        6 3
        2 4 1
        3 2
        3 2
        8 2
        3 8
      EOF

      expect(described_class.parse input).to eq [
        described_class.new(6, [2, 4, 1]),
        described_class.new(3, [3, 2]),
        described_class.new(8, [3, 8]),
      ]
    end
  end
end
