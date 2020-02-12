module ApisHelper
  def format_data(data)
    data['items'].map{ |item|
      {
        name: item['name'],
        url: item['html_url'],
        stars: item['stargazers_count'],
        description: item['description']
      }
    }
  end
end
