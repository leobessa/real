# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_real_session',
  :secret      => 'cab2e6b30881db95982321af9569a136214b7c5ea6f62653c2052622744aa117ea67c6b6d99d1174b10e79e0ab3fd03a1c23034f9d5d3d6b960e729c18c4be55'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
