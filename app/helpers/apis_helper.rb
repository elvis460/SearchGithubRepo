module ApisHelper
  def format_data(data)
    res= data['items'].map{ |item| { name: item['name'], url: item['html_url'] } }
    res
  end
end
