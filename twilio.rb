prompt = ">"
puts "Ask me a question.", prompt
answer = gets.chomp
require 'twilio-ruby'
account_sid = "AC96e2b3f351f4f980dffaa15dc5ce2909"
auth_token = "ac8d96f4c7f89e61f6dcaf3688fb871f"
@client = Twilio::REST::Client.new(account_sid, auth_token)
message = @client.account.messages.create(
    :from => "+1(843)203-0532",
    :to   => "+1(843)478-9267",
    :body => "Ask again later!"
    )
puts message.to
