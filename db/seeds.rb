
#blog things
starter = BlogRoll.create("datachomp", "rob sullivan", "datachomp.com", "http://datachomp.com/atom.xml", "atom")
starter = BlogRoll.create("geekindulgence", "jeff french", "http://geekindulgence.com/", "http://geekindulgence.com/feed/", "wordpress")
starter = BlogRoll.create("octolabs", "jeremy green", "http://octolabs.com/", "http://www.octolabs.com/blogs/octoblog/feed.xml", "atom")

#groups
u = Usergroup.new
u.name = 'okc ruby'
u.website = "http://okcruby.org"
u.logo_url = "/images/logos/okcruby.png"
u.twitter = 'okcrb'
u.location = "[Prototek](https://www.google.com/maps/dir//401+NW+10th+St,+Oklahoma+City,+OK+73103/@35.478527,-97.519417,17z/data=!4m13!1m4!3m3!1s0x87b21733fd30d655:0xce3a1cd9b95c8415!2s401+NW+10th+St!3b1!4m7!1m0!1m5!1m1!1s0x87b21733fd30d655:0xce3a1cd9b95c8415!2m2!1d-97.519417!2d35.478527)"
u.meetupdate = "2nd Thursday"
u.email = 'info@okcruby.org'
u.blurb = "OKC Ruby is focused on helping Oklahoma Rubyists to connect and share ideas. We hope you will join us."
u.save

u = Usergroup.new
u.name = 'okc js'
u.website = "http://okcjs.org"
u.logo_url = "/images/logos/okcjs.png"
u.twitter = 'okcjs'
u.location = "[Prototek](https://www.google.com/maps/dir//401+NW+10th+St,+Oklahoma+City,+OK+73103/@35.478527,-97.519417,17z/data=!4m13!1m4!3m3!1s0x87b21733fd30d655:0xce3a1cd9b95c8415!2s401+NW+10th+St!3b1!4m7!1m0!1m5!1m1!1s0x87b21733fd30d655:0xce3a1cd9b95c8415!2m2!1d-97.519417!2d35.478527)"
u.meetupdate = "3rd Tuesday"
u.email = 'oklahomacityjavascript@gmail.com'
u.blurb = "OKC js is focused on helping Oklahoma Javascripters to connect and share ideas. We hope you will join us."
u.save

u = Usergroup.new
u.name = 'cocoaheads okc'
u.website = "http://www.cocoaokc.org/"
u.logo_url = "/images/logos/cocoaokc-xcode.png"
u.twitter = "cocoaokc"
u.location = "varies"
u.email = ""
u.meetupdate = "First Tuesday @ 6:30pm"
u.blurb = "Oklahoma City’s local Cocoaheads group devoted to the discussion of iOS and Mac programming."
u.save

u = Usergroup.new
u.name = 'okc sql'
u.website = "http://okcsql.org"
u.logo_url = "/images/logos/okcsql.png"
u.twitter = 'okcsql'
u.location = "dell"
u.meetupdate = "2nd Monday"
u.email = 'info@okcsql.org'
u.blurb = "OKC SQL is focused on helping Oklahoma to connect, query, and share ideas. We hope you will join us."
u.save


u = Usergroup.new
u.name = 'ok gd'
u.website = "http://okgamedev.com/"
u.logo_url = "/images/logos/okcgd.jpeg"
u.twitter = " OKGameDevs"
u.location = "varies"
u.facebook = "https://www.facebook.com/groups/okgamedevs/"
u.meetupdate = "Last Thursday"
u.email = ""
u.blurb = "OK GD is focused on helping Oklahoma Game Developers to connect and share ideas. We hope you will join us."
u.save


u = Usergroup.new
u.name = 'okc jug'
u.website = "http://okcjug.org"
u.logo_url = "/images/logos/okcjug.jpeg"
u.twitter = 'okcjug'
u.location = "nw okc library"
u.meetupdate = "2nd Tuesday"
u.email = ""
u.blurb = "OKC Jug is focused on helping Oklahoma Java Devs to connect and share ideas. We hope you will join us."
u.save


u = Usergroup.new
u.name = 'oklahoma php'
u.website = "www.meetup.com/OklahomaPHP"
u.logo_url = "/images/logos/okcphp.jpeg"
u.twitter = 'OklahomaPHP'
u.location = "the exchange"
u.meetupdate = "1st Tuesday"
u.email = ""
u.blurb = "Oklahoma PHP is focused on helping Oklahoma PHP devs to connect and share ideas. We hope you will join us."
u.save
