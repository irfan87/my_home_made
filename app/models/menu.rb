class Menu < ApplicationRecord
	belongs_to :cooker, dependent: :destroy
end
