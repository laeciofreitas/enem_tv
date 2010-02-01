# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_enem_tv_session',
  :secret      => 'f7ef67e5ba9f495a0054208f00676a31e3ecc3beecc950a11aa6f985f90bd46c4b69d59890ef61dda7e4f14f0989a0796fd29026746fd1de2db06d12f8dcc90d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
