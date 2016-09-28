class NetsuiteStatusUpdateEtlDestination
  # service NetsuiteService

  def write(row)
    puts "Writing #{row} to destination"

    ### write the row to the destination
    # service.update(row)
    # service.create
    puts row
  end

  def close
  end
end
