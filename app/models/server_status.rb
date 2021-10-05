class ServerStatus < ApplicationRecord
  ALLOWED_STATUSES = ["UP", "DOWN"]
  validates :status, :message, presence: true
  validates :status, inclusion: { in: ALLOWED_STATUSES, message: "%{value} is not valid" }
end
