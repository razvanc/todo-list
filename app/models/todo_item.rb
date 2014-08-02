class TodoItem < ActiveRecord::Base
  belongs_to :todos_list
end
