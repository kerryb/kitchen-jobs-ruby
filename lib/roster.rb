Roster = Struct.new :chef_jobs, :assistant_jobs do
  def self.from_completed_jobs total_jobs, jobs_completed
    pending_jobs = (1..total_jobs).to_a - jobs_completed
    chef_jobs, assistant_jobs = pending_jobs.partition.with_index {|job, i| i.even? }
    new chef_jobs, assistant_jobs
  end
end
