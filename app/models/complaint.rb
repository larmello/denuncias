class Complaint < ApplicationRecord
  # validates :description, presence: true, length: { minimum: 10 }
  # validates :ni_comp, presence: true, length: { minimum: 11, maximum: 18 }
  # validates :custom, presence: true

  belongs_to :user, optional: true
  has_many :complaint_categories
  has_many :complements
  has_many :categories, through: :complaint_categories
  has_many_attached :attachments, dependent: :destroy
end
