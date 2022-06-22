class OnesimusTest < ApplicationRecord
    # has_one_attached :image
    has_many_attached :images
    has_many :media_uploads
end
