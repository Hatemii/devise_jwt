class JwtDenylist < ApplicationRecord
  # This table is used as a list of revoked JWT tokens 
  # that have been logged out and no longer have access to our application.
  
  include Devise::JWT::RevocationStrategies::Denylist

  self.table_name = 'jwt_denylist'
end
