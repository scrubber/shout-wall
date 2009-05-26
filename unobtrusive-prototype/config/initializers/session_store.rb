# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_unobtrusive_shouts_session',
  :secret      => '01180549fc1ec45d03a8c8062b6d10e3f64749c467cbffb734b979a7888440c19e91652351cdb186ac6c78c7cc2de4b67268fc25f2122f795eaf57d1082d1d09'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
