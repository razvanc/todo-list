json.array!(@todos_lists) do |todos_list|
  json.extract! todos_list, :id, :title, :description
  json.url todos_list_url(todos_list, format: :json)
end
