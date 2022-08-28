class PropManager
  def initialize device_id
    @device_id = device_id
  end

  def list_device_props
    `xinput list-props #{@device_id}`
  end 

  def find_prop description
    self.list_device_props.scan /#{description} \([0-9]{3}\)/
  end

  def get_prop_id description 
    (find_prop description).first.delete "#{description} ()"
  end

  def modify_prop prop_id, status
    fork { exec "xinput set-prop #{@device_id} #{prop_id} #{status}" }
  end
end