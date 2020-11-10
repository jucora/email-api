class User < ApplicationRecord
    after_create :subscribe_control

    private
    def subscribe_control
        FormWorker.perform_async(self.name, self.email, self.phone, self.subscribe)
    end
end
