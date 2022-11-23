require 'rails_helper'

RSpec.describe SessionsController, type: :routing do
  it { expect(get: '/login').to route_to('sessions#new') }
  it { expect(post: '/login').to route_to('sessions#create') }
end


