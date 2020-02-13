require 'rails_helper'

RSpec.describe 'homes', type: :routing do
  it '#index' do
    expect(get: '/homes').to route_to('homes#index')
  end
end