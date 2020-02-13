require 'rails_helper'

RSpec.describe 'apis', type: :routing do
  it '#index' do
    expect(get: '/apis').to route_to('apis#index')
  end
end