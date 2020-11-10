class FormWorker
  include Sidekiq::Worker

  def perform(name = nil, email=nil, phone=nil, subscribe=nil)
    sendStatus= ''
    if subscribe === true
      sendStatus = "opted-in"
    end
    p sendStatus
    
    @list_id = "3553536a69"
    gibbon = Gibbon::Request.new
    gibbon.lists(@list_id).members.create(
      body: {
        email_address: email,
        status: "subscribed",
        merge_fields: {
          FNAME: name,
          PHONE: phone,
          SEND_INFO: sendStatus,
        }
      }
    )
    
  end
end
