class DeviceLocator
  def self.device_id device_name
    xinput_output = `xinput list | grep '#{device_name}'`
    id = xinput_output.scan /id\=[0-9]{2}/
    id.first.delete('id=') 
  end
end
