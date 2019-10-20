class Selfy < ApplicationRecord
  belongs_to :report, optional: true
  mount_uploader :picture, SelfyUploader
end
