# This file is used by Rack-based servers to start the application.
# /home/bwaddellflynn/.ssh/id_ed25519.pub

require_relative "config/environment"

run Rails.application
Rails.application.load_server
