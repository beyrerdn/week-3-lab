require 'sinatra'

get '/why' do
  erb :kitten
end

get '/index/:id' do
  post = Post.all[id.to_i - 1]
  erb :index, :locals => post
end

class Post

  def self.all
    [
      {
      :author => "Fyodor Dostoyevsky",
      :title => "",
      :body => {
        :p1 => "asdf",
        :p2 => "asdf",
        :p3 => "asdfa"
      },
      :summary => "asdfasdf",
      :time => "Friday January 7th, 1881 8:21pm",
      :author_image => "images/author_image.jpg",
      :id => "1"
    },

    {
      :author => "Mark Twain",
      :title => "asdfasdf",
      :body => {
        :p1 =>
        "asdfasdfasdfasdf",
        :p2 =>
        "rtwertwertwergg",
        :p3 =>
        "oiuqwehrkjflsadf"
      },
      :summary => "weoirjlskf",
      :time => "Tuesday April 20th, 1909 4:10am",
      :author_image => "images/author_image2.jpg",
      :id => "2"
    }
  ]
  end

end

# get '/MT' do
#   post = {
#     :author =>
#     :title => ,
#     :body => {
#       :p1 => ,
#       :p2 =>
#       :p3 =>
#     },
#
#     :summary => ,
#
#     :time => ,
#     :author_image =>
#   }
#   erb :index, :locals => post
#
# end
