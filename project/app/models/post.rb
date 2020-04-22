class Post < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :tags
  has_many :comments,
  dependent: :delete_all
  validates :title, presence: true,
                    length: {maximum: 25}
  validates :body, :photo,  presence: true
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

end
