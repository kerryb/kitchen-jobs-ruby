require "kitchen_jobs"

describe KitchenJobs, "integration" do
  it "works for the example given in the problem statement" do
    input = <<~EOF
      3
      6 3
      2 4 1
      3 2
      3 2
      8 2
      3 8
    EOF

    expect(subject.call input).to eq <<~EOF
      3 6
      5
      1

      1 4 6
      2 5 7
    EOF
  end
end
