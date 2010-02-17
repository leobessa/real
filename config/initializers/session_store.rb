# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_real_session',
  :secret => '9738b5e45c531ec9b6d23260f4b6b76b6667c28bd11a567e5904eed3fc259ef407ad39365857e735ac6f823933499d44ea7699676e14d8f168b86afda8bcf388'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
