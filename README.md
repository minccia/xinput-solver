# This program was created only for personal use purpose.

I created this program because i was struggling with my notebook's touchpad in linux.
Basically, it was getting some configurations from the device turned off by default once booting up.
I had to use Xinput (Command-line utility to configure and test X input devices) to manually change these configurations every time i turned on the computer.

Because it was manually done everytime, and often when the system was updated the device's id got changed, it fastly became tiring and too many work for me because i constantly had to check where the device id and property code has changed. I decided to use some of my ruby skills to automatize this process, getting the touchpad id dinamically and changing X.org input driver configurations using ruby in-built method 'exec' to run the xinput commands like in terminal.

Example of libinput configurations can be:

# Touchpad Tapping (Enabled/Unabled)
# Touchpad Natural Scrolling (Enabled/Unabled)
# Touchpad Disable While Typing (Enabled/Unabled)
# And etcetera.

Hope this can be useful for someone that is struggling with the same. Just change some lines to adapt to your device and reality. Enjoy!