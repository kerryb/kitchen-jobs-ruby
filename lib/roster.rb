Roster = Struct.new :chef_jobs, :assistant_jobs do
  def self.from_completed_jobs total_jobs, jobs_completed
    new [], []
  end
end
