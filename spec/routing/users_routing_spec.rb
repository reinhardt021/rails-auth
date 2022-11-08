require 'rails_helper'

RSpec.describe UsersController, type: :routing do
  it { expect(get: '/register').to route_to('users#new') }
  it { expect(post: '/users').to route_to('users#create') }
end

