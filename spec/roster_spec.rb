require "roster"

describe Roster do
  describe ".from_completed_jobs" do
    context "when there are no jobs" do
      subject { described_class.from_completed_jobs 0, [] }

      it "allocates no jobs to either the chef or assistant" do
        expect(subject).to eq described_class.new [], []
      end
    end

    context "when all jobs are completed" do
      subject { described_class.from_completed_jobs 3, [3, 1, 2] }

      it "allocates no jobs to either the chef or assistant" do
        expect(subject).to eq described_class.new [], []
      end
    end

    context "when there is one uncompleted job" do
      subject { described_class.from_completed_jobs 3, [3, 1] }

      it "allocates it to the chef" do
        expect(subject).to eq described_class.new [2], []
      end
    end

    context "when there are many uncompleted jobs" do
      subject { described_class.from_completed_jobs 7, [3, 1] }

      it "allocates them alternately to the chef and assistant" do
        expect(subject).to eq described_class.new [2, 5, 7], [4, 6]
      end
    end
  end
end
