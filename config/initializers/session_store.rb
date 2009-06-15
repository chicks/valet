# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_it-valet_session',
  :secret      => '005cddad4d6f9a0e61e2368e328b86c2cabb2ca01b1a313309a9836060ed3d79cf330f0ef8686ab54de0f43a877151c405f4159d327697896c0db195a6d11426'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
