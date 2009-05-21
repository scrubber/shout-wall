# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_unobtrusive-shout-wall_session',
  :secret      => '1739bb7aff9db13ba432a246935807eaedca160c4904282b8482e9ff72fa6c6f5f03cd23f0c204339e6671a6c88941717f642e453bef5853eb27634da17b51a4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
