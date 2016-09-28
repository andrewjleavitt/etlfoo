class MavenlinkService
  def initialize
    @credentials = {

    }
    @api_route = 'https://mavenlink.net/api/v2/status'
  end

  def upate(row)
    service.post({
      host: @api_route,
      data: row
    })
  end
end
