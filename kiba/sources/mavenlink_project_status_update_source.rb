class MavenlinkProjectStatusUpdatesSource
  def initialize
    puts 'Reading from source'
    @data = getTheData
    puts "Recieved #{@data} from source"
  end

  def getTheData
    [
      {
        workspace_id: "123",
        job_status: "Completed"
      },
      {
        workspace_id: "987",
        job_status: "Not Started"
      }
    ]
  end

  def each
    @data.each do |row|
      puts "Yielding #{row} to transforms"
      yield row
    end
  end
end
