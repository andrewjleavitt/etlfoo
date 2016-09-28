require 'kiba'

Dir[File.expand_path('../../kiba/**/*.rb', __FILE__)].each {|file| require file }

class MavenlinkToNetsuiteJobStatus
  script_content = IO.read(File.expand_path('../../kiba/scripts/mavenlink_to_netsuite_job_status.etl', __FILE__))
  @job_definition = Kiba.parse(script_content)

  def self.run
    Kiba.run(@job_definition)
  end
end

MavenlinkToNetsuiteJobStatus.run
