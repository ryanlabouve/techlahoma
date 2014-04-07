
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
u.meetupdate = "2nd Thursday"
u.email = 'info@okcruby.org'
u.blurb = "OKC Ruby is focused on helping Oklahoma Rubyists to connect and share ideas. We hope you will join us."
u.save


u = Usergroup.new
u.name = 'okc js'
u.website = "http://okcjs.com"
u.logo_url = "https://pbs.twimg.com/profile_images/1732166342/js_bigger.jpg"
u.twitter = 'okcjs'
u.location = "the exchange"
u.meetupdate = "3rd Tuesday"
u.email = 'oklahomacityjavascript@gmail.com'
u.blurb = "OKC js is focused on helping Oklahoma Javascripters to connect and share ideas. We hope you will join us."
u.save


u = Usergroup.new
u.name = 'okc sql'
u.website = "http://okcsql.org"
u.logo_url = "http://www.okcsql.org/wp-content/uploads/2014/02/minimalist_alpha_back100x100.png"
u.twitter = 'okcsql'
u.location = "dell"
u.meetupdate = "2nd Monday"
u.email = ' '
u.blurb = "OKC SQL is focused on helping Oklahoma to connect, query, and share ideas. We hope you will join us."
u.save


u = Usergroup.new
u.name = 'ok gd'
u.website = "http://okgd.org"
u.logo_url = "http://www.okcruby.org/images/okcruby.png"
u.twitter = ' '
u.location = " "
u.meetupdate = "Last Thursday"
u.email = ' '
u.blurb = "OK GD is focused on helping Oklahoma Game Developers to connect and share ideas. We hope you will join us."
u.save


u = Usergroup.new
u.name = 'okc jug'
u.website = "http://okcjug.org"
u.logo_url = "https://pbs.twimg.com/profile_images/74805092/duke_bigger.jpeg"
u.twitter = 'okcjug'
u.location = "nw okc library"
u.meetupdate = "2nd Tuesday"
u.email = ' '
u.blurb = "OKC Jug is focused on helping Oklahoma Java Devs to connect and share ideas. We hope you will join us."
u.save


u = Usergroup.new
u.name = 'oklahoma php'
u.website = "www.meetup.com/OklahomaPHP"
u.logo_url = "https://pbs.twimg.com/profile_images/423253652170891264/Vq6F3oYT_bigger.jpeg"
u.twitter = 'OklahomaPHP'
u.location = "the exchange"
u.meetupdate = "1st Tuesday"
u.email = ' '
u.blurb = "Oklahoma PHP is focused on helping Oklahoma PHP devs to connect and share ideas. We hope you will join us."
u.save
