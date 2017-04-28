require "roster"

describe Roster do
  describe ".from_completed_jobs" do
    context "when there are no jobs" do
      it "allocates no jobs to either the chef or assistant" do
        expect(described_class.from_completed_jobs 0, [])
          .to eq described_class.new [], []
      end
    end
  end
end
