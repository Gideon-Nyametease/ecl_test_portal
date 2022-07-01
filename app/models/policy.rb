class Policy < ApplicationRecord
    has_one_attached :image
    # download = Cloudinary::Downloader.download("public_id", :flags => :attachment)
end
