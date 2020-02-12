module ApisHelper
  def format_data(data)
    return data['items'].map{ |item| { name: item['name'], url: item['html_url'] } }
  end
end
