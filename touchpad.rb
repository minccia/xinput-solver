require_relative 'prop_manager'
require_relative 'device_locator'

class Touchpad
  ON = 1
  OFF = 0

  def initialize
    @prop_manager = PropManager.new DeviceLocator.device_id 'Touchpad'
  end 

  def tapping_enabled_id
    @prop_manager.get_prop_id 'Tapping Enabled'
  end

  def disable_while_typing_id
    @prop_manager.get_prop_id 'Disable While Typing Enabled'
  end

  def run 
    @prop_manager.modify_prop self.tapping_enabled_id, ON
    @prop_manager.modify_prop self.disable_while_typing_id, OFF
  end
end

Touchpad.new.run

