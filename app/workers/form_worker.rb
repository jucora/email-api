class FormWorker
  include Sidekiq::Worker

  def perform(name = nil, email=nil, phone=nil, subscribe=nil)
    sendStatus= ''
    if subscribe === true
      sendStatus = "opted-in"
    end
    @list_id = "2a65827e13"
    gibbon = Gibbon::Request.new
    gibbon.lists(@list_id).members.create(
      body: {
        email_address: email,
        status: "subscribed",
        merge_fields: {
          NAME: name,
          PHONE: phone,
          SEND_INFO: sendStatus,
        }
      }
    )
    
  end
end
