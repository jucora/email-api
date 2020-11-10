class User < ApplicationRecord
    after_create :subscribe_control

    private
    def subscribe_control
        if self.subscribe
            FormWorker.perform_async(self.email)
        end
    
    end
end
