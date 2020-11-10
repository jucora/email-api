class FormWorker
  include Sidekiq::Worker

  def perform(email=nil)
    p email
    p 'Hello World!'
  end
end
