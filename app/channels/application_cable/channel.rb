# ApplicationCable
# Built-in module to hold actioncable's goodies.
module ApplicationCable
  # ApplicationCable::Channel
  # A channel for all application channels to inherit. Holds common behavior
  # across all of them.
  class Channel < ActionCable::Channel::Base
  end
end
