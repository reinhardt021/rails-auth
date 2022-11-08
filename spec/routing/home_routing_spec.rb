require 'rails_helper'

RSpec.describe HomeController, type: :routing do
  it { expect(get: '/').to route_to('home#index') }
end
