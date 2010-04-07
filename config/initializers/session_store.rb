# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_authlogic-activation-reset-password-example_session',
  :secret      => 'cfc995a13db8a5781c04de0129dadfec00a7a5b7db66f71570c46ecbf38c5d7aa1e1b46c0da70d8bc6107e89349cf4ff168a832290bfce4aa4d801eeaed16ee9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
