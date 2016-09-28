class SetNetsuiteCustomStatusFieldTransform
  def process(row)
    rand_num = Random.rand(100..1000)
    puts "#{ self.class.name } adding #{ { netsuite_custom_status_field_id: rand_num } } to #{row}"
    row[:netsuite_custom_status_field_id] = rand_num
    row
  end
end
