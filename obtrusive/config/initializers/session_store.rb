# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_obtrusive-shout-wall_session',
  :secret      => 'bdf13b284afef3d58d864f4831241927cae7701464a31ca6bdff8a54562763b74311e4c208452244c83a0cc50ebf0b50c41094b09bbd61eb0c69811cee1fa6df'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
