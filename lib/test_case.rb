TestCase = Struct.new :total_jobs, :jobs_completed do
  def self.parse input
    input.each_line.drop(1).each_slice(2).map {|header, jobs|
      new header.split.first.to_i, jobs.split.map(&:to_i)
    }
  end

  def call
  end
end
