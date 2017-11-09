class SendTweet

  def initialize(string)
    @string = string
  end



  def log_in_to_twitter
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ""
      config.consumer_secret     = ""
      config.access_token        = ""
      config.access_token_secret = ""
    end
  end

   def perform
     log_in_to_twitter
    @client.update(@string)
   end

end




