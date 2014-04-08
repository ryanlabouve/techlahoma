
#blog things
starter = BlogRoll.create("datachomp", "rob sullivan", "datachomp.com", "http://datachomp.com/atom.xml", "atom")
starter = BlogRoll.create("geekindulgence", "jeff french", "http://geekindulgence.com/", "http://geekindulgence.com/feed/", "wordpress")

starter = BlogRoll.create("octolabs", "jeremy green", "http://octolabs.com/", "http://www.octolabs.com/blogs/octoblog/feed.xml", "atom")


#groups
u = Usergroup.new
u.name = 'okc ruby'
u.website = "http://okcruby.org"
u.logo_url = "http://www.okcruby.org/images/okcruby.png"
u.twitter = 'okcrb'
u.location = "the exchange"
u.email = 'info@okcruby.org'
u.blurb = "OKC Ruby is focused on helping Oklahoma Rubyists to connect and share ideas. We hope you will join us."
u.save

u = Usergroup.new
u.name = 'okc js'
u.website = "http://okcjs.org"
u.twitter = 'okcjs'
u.location = "the exchange"
u.email = 'info@okcjs.org'
u.blurb = "OKC js is focused on helping Oklahoma Javascripters to connect and share ideas. We hope you will join us."
u.save

u = Usergroup.new
u.name = 'cocoaheads okc'
u.website = "http://www.cocoaokc.org/"
u.twitter = "cocoaokc"
u.location = "varies"
u.email = ""
# add meetupdate once we have a migration
#u.meetupdate = "First Tuesday @ 6:30pm"
u.blurb = "Oklahoma City’s local Cocoaheads group devoted to the discussion of iOS and Mac programming."
u.save
