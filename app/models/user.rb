class User < ApplicationRecord
    validates_presence_of :name :email, :phone
    validates_uniqueness_of :email, :phone

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }


    after_create :subscribe_control

    private
    def subscribe_control
        FormWorker.perform_async(self.name, self.email, self.phone, self.subscribe)
    end
end
