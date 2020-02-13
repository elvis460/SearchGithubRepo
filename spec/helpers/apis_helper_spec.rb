require 'rails_helper'

RSpec.describe ApisHelper, type: :helper do
  context '#format_data' do
    let(:data) do
      {
        "total_count" => 142037,
        "incomplete_results" => false,
        "items" => [
          {
            "id" => 538746,
            "node_id" => "MDEwOlJlcG9zaXRvcnk1Mzg3NDY=",
            "name" => "ruby",
            "full_name" => "ruby/ruby",
            "private" => false,
            "owner" => {},
            "html_url" => "https://github.com/ruby/ruby",
            "description" => "The Ruby Programming Language [mirror]",
            "fork" => false,
            "url" => "https://api.github.com/repos/ruby/ruby",
            "stargazers_count" => 16562,
            "open_issues" => 152,
            "watchers" => 16562,
            "default_branch" => "master",
            "score" => 1.0
          }
        ]
      }
    end
    it 'return formatted data' do
      expect(format_data(data)).to eq (
        [
          {
            name: 'ruby',
            url: 'https://github.com/ruby/ruby',
            stars: 16562,
            description: 'The Ruby Programming Language [mirror]'
          }
        ]
      )
    end
  end
end