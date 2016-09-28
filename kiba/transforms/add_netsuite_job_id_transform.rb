class AddNetsuiteJobIdTransform
  def process(row)
    puts "#{self.class.name} adding #{ { netsuite_job_id: get_netsuite_job_id(row[:workspace_id]) } } to #{row}"
    row[:netsuite_job_id] = get_netsuite_job_id(row[:workspace_id])
    row
  end

  def get_netsuite_job_id(workspace_id)
    workspace_id.reverse
  end
end
