# Load the Rails application.
require_relative "application"

Rails.application.secrets.secret_key_base = '5dc942078e45043d8129fc5de2ab4be7'

# Initialize the Rails application.
Rails.application.initialize!
