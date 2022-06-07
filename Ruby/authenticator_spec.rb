# frozen_string_literal: true

require './authentication_service'

describe 'Authenticator' do
  describe 'administrator' do
    it 'is always authenticated' do
      service = AuthenticationService.new
      admin_id = 12_345
      expect(service.authenticated?(admin_id)).to be true
    end
  end

  describe 'normal user' do
    it 'is not authenticated initially' do
      service = AuthenticationService.new
      user_id = 11_111
      expect(service.authenticated?(user_id)).to be false
    end
  end
end
