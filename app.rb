require 'sinatra'
require 'json'
require 'pry-byebug'

get '/why' do
  erb :kitten
end

get '/template/:id' do
  post = Post.all[params[:id]]
  erb :index, :locals => post
end

class Post

  def self.all
    {
      "1" =>
      {
        :author => "Fyodor Dostoyevsky",
        :title => "BOYS, YOU MUST STRIVE TO FIND YOUR OWN VOICE. BECAUSE THE LONGER YOU WAIT TO BEGIN, THE LESS LIKELY YOU ARE TO FIND IT AT ALL.",
        :body => {
          :p1 => "In short, I deduce that all, not only great men, but even those who are a tiny bit off the beaten track - that is, who are a tiny bit capable of something new - by their very nature cannot fail to be criminals - more or less, to be sure. Otherwise it would be hard for them to get off the beaten track, and, of course, they cannot consent to stay on it, again by nature, and in my opinion it is even their duty not to consent. In short, you see that so far there is nothing especially new here. It has been printed and read a thousand times. As for my dividing people into ordinary and extraordinary, I agree that it is somewhat arbitrary, but I don't really insist on exact numbers. I only believe in my main idea.",
          :p2 => "It consists precisely in people being divided generally, according to the law of nature, into two categories: a lower or, so to speak, material category (the ordinary), serving solely for the reproduction of their own kind; and people proper - that is, those who have the gift or talent of speaking a new word in their environment. The subdivisions here are naturally endless, but the distinctive features of both categories are quite marked: the people of the first, or material, category are by nature conservative, staid, live in obedience, and like being obedient. In my opinion they even must be obedient, because that is their purpose, and for them there is decidedly nothing humiliating in it. Those of the second category all transgress the law, are destroyers or inclined to destroy, depending on their abilities. The crimes of these people, naturally, are relative and variegated; for the most part they call, in quite diverse declarations, for the destruction of the present in the name of the better. But if such a one needs, for the sake of his idea, to step even over a dead body, over blood, then within himself, in his conscience, he can, in my opinion, allow himself to step over blood - depending, however, on the idea and its scale - make note of that. It is only in this sense that I speak in my article of their right to crime.",
          :p3 => "(You recall we began with the legal question.) However, there's not much cause for alarm: the masses hardly ever acknowledge this right in them; they punish them and hang them (more or less), thereby quite rightly fulfilling their conservative purpose; yet, for all that, in subsequent generations these same masses place the punished ones on a pedestal and worship them (more or less). The first category is always master of the present; the second - master of the future. The first preserves the world and increases it numerically; the second moves the world and leads it towards a goal. Both the one and the other have a perfectly equal right to exist."
        },
        :summary => "Perhaps it will interest you to know what I do when I'm not writing-well, I read. I read a great deal, and it has a curious effect on me. When I re-read anything that I knew years ago, I feel fresh powers in myself. I can pierce to the heart of the book, grasp it entire, and from it draw new confidence in myself. Sarcasm: the last refuge of modest and chaste-souled people when the privacy of their soul is coarsely and intrusively invaded. We sometimes encounter people, even perfect strangers, who begin to interest us at first sight, somehow suddenly, all at once, before a word has been spoken.A real gentleman, even if he loses everything he owns, must show no emotion. Money must be so far beneath a gentleman that it is hardly worth troubling about. Beauty is mysterious as well as terrible. God and devil are fighting there, and the battlefield is the heart of man.",
        :time => "Friday January 7th, 1881 8:21pm",
        :author_image => "../images/author_image.jpg"
      },
      "2" =>
      {
      :author => "Mark Twain",
      :title => "SEIZE THE DAY. BECAUSE BELIEVE IT OR NOT, EACH AND EVERY ONE OF US IN THIS ROOM IS ONE DAY GOING TO STOP BREATHING, TURN COLD AND DIE.",
      :body => {
        :p1 =>
        "When she fights strong and the tiller slips a little,
        in a jerky, greasy sort of way, let up on her a trifle;
        it is the way she tells you at night that the water is too shoal; but keep edging her up, little by little, toward the point. You are well up on the bar, now; there is a bar under every point, because the water that comes down around it forms an eddy and allows the sediment to sink.  Do you see those fine lines on the face of the water that branch out like the ribs of a fan. Well, those are little reefs; you want to just miss the ends of them, but run them pretty close.  Now look out--look out! Don't you crowd that slick, greasy-looking place; there ain't nine feet there; she won't stand it.  She begins to smell it; look sharp, I tell you!  Oh blazes, there you go!
        Stop the starboard wheel!  Quick!  Ship up to back! Set her back!",
        :p2 =>
        "The Mississippi is remarkable in still another way--
        its disposition to make prodigious jumps by cutting through narrow necks of land, and thus straightening and shortening itself. More than once it has shortened itself thirty miles at
        a single jump!  These cut-offs have had curious effects:
        they have thrown several river towns out into the rural districts, and built up sand bars and forests in front of them.
        The town of Delta used to be three miles below Vicksburg:
        a recent cutoff has radically changed the position, and Delta is now TWO MILES ABOVE Vicksburg.",
        :p3 =>
        "When I reached the ground, two hundred men, women, and children stood massed together, transfixed with horror, and staring at the grated windows of the jail.  Behind the iron bars, and tugging frantically at them, and screaming for help,
        stood the tramp; he seemed like a black object set against
        a sun, so white and intense was the light at his back.
        That marshal could not be found, and he had the only key."
      },
      :summary => "Humor is the great thing, the saving thing. The minute it crops up, all our irritations and resentments slip away and a sunny spirit takes their place.
      In the Spring, I have counted 136 different kinds of weather inside of 24 hours.
      Each man must for himself alone decide what is right and what is wrong, which course is patriotic and which isn't. You cannot shirk this and be a man. To decide against your conviction is to be an unqualified and excusable traitor, both to yourself and to your country, let men label you as they may.
      How little a thing can make us happy when we feel that we have earned it.",
      :time => "Tuesday April 20th, 1909 4:10am",
      :author_image => "../images/author_image2.jpg"
    }
  }
  end

end
