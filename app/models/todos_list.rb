class TodosList < ActiveRecord::Base
    validates :title, presence: true
    validates :title, length: { minimum: 2 }

    validates :description, presence: true
    validates :title, length: { minimum: 5 }
end
