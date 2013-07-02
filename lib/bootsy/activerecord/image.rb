module Bootsy
  class Image < ActiveRecord::Base
    belongs_to :image_gallery, touch: true

    attr_accessible :image_file

    mount_uploader :image_file, ImageUploader

    validates_presence_of :image_file, :image_gallery_id
  end
end
