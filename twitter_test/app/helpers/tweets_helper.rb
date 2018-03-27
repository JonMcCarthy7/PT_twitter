module TweetsHelper
    def get_tagged(tweet)
        message_arr = tweet.message.split
        message_arr.each_with_index do |word, index|
            if word[0] == "#"
                if Tag.pluck(:phrase).include?(word)
                    tag = Tag.find_by(phrase: word)
                    puts tag.errors
                else
                    tag = Tag.create(phrase: word)
                    puts tag.errors
                end
                puts "WTF************************"
                tweet_tag = TweetTag.create(tweet_id: tweet.id, tag_id: tag.id)
                puts tweet_tag.errors.full_messages.to_sentence

                message_arr[index] = "<a href='/tag_tweets?id=#{tag.id}'>#{word}</a>"
            end
        end

        tweet.message = message_arr.join(" ")
        return tweet
    end
end
