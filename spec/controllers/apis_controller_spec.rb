require 'rails_helper'

RSpec.describe ApisController, type: :controller do
  context '#index' do
    context 'without params' do
      it 'get 200 with xhr request' do
        get :index, xhr: true
        expect(response).to have_http_status(200)
      end

      it 'get 500 if not xhr request' do
        get :index
        expect(response).to have_http_status(500)
      end
    end

    context 'with params' do
      let(:query) { 'test' }
      let(:request_url) { "https://api.github.com/search/repositories?page=1&q=#{query}%20in:name%26sort=stars%26order=desc" }

      context 'GithubAPI return 200' do
        it 'render partial' do
          stub_request(:get, request_url).to_return(
            status: 200,
            body: { items: [] }.to_json,
          )

          get :index, params: { query: query }, xhr: true
          expect(response).to render_template('apis/data.js.erb')
        end
      end

      context 'GithubAPI return 500' do
        it 'return 400' do
          stub_request(:get, request_url).to_return(
            status: 500,
            body: "",
          )

          get :index, params: { query: query }, xhr: true
          expect(response).to have_http_status(400)
        end
      end

      context 'raise StandardError' do
        it 'return 400' do
          stub_request(:get, request_url).and_raise(StandardError)

          get :index, params: { query: query }, xhr: true
          expect(response).to have_http_status(500)
        end
      end
    end
  end
end
