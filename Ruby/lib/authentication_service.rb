# frozen_string_literal: true

# This class AuthenticationService.
class AuthenticationService
  #
  # the goal is to replace the following method with:
  # def authenticated?(role, user_id)
  #

  def authenticated?(role = :FIX_ME, user_id = 'FIX_ME')
    user_id = role if user_id.is_a?(String)
    user_id == 12_345
  end
end

# This class AuthenticationClient.
class AuthenticationClient
  def initialize(authentication_service)
    @authentication_service = authentication_service
  end

  def run
    authenticated = @authentication_service.authenticated?(33, 'user')
    puts "authenticated: #{authenticated}"
  end
end

# This class YetAnotherClient.
class YetAnotherClient
  def initialize(authentication_service)
    @authentication_service = authentication_service
  end

  def run
    @authentication_service.authenticated?(100)
  end
end

if __FILE__ == $PROGRAM_NAME
  client = AuthenticationClient.new(AuthenticationService.new)
  client.run
end
