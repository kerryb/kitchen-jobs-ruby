Roster = Struct.new :chef_jobs, :assistant_jobs do
  def self.from_completed_jobs total_jobs, jobs_completed
    pending_jobs = (1..total_jobs).to_a - jobs_completed
    new pending_jobs, []
  end
end
