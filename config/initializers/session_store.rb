# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_chiphone_rails_session',
  :secret      => 'b67a9cfd0e0c0b0eef085cc4f0c9b18a336d4e9b4738f610365fd7afb032875e955ae1a9e4ef17d99d397fa1c22abeb2ce6806dfbb78f0164d5f761ad04a0009'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
