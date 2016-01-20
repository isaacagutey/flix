# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  puts "Creating Categories..."
   Category.create(name:"3D Animations")

   Category.create(name:"2D Animations")

   Category.create(name:"Blockbusters")

   Category.create(name:"Comedies")

   # Category.create(name:"Action")

   # Category.create(name:"adventure")

   # Category.create(name:"Documentary")

   # Category.create(name:"Drama")

   # Category.create(name:"Fantasy")

   # Category.create(name:"Horror")

   # Category.create(name:"Romantic Comedy")

   # Category.create(name:"Science Fiction")

   # Category.create(name:"Thriller")
 

  puts "Creating Videos..."
  Video.create(title:"Monk", category_ids: [4], description:"Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.", image_url:{"small_img" => "/tmp/monk.jpg", "trailer" => "/tmp/monk_large.jpg"}, )

  Video.create(title:"Ice Age 3", category_ids: [1], description:"After Sid (John Leguizamo) pilfers some dinosaur eggs, Manny (Ray Romano), Diego (Denis Leary) and the rest of their prehistoric pals enter a mysterious, underground world to rescue the hapless sloth", image_url:{"small_img" => "/tmp/3d_animations/ice_age_small.jpg", "trailer" => "/tmp/3d_animations/iceage_large.jpg"})

  Video.create(title:"Terminator", category_ids: [3], description:"When John Connor (Jason Clarke), leader of the human resistance against Skynet, sends Kyle Reese (Jai Courtney) back to 1984 to protect his mother, Sarah (Emilia Clarke), from a Terminator assassin, an unexpected turn of events creates an altered timeline. Instead of a scared waitress", image_url:{"small_img" => "/tmp/blogbuster/terminator_small.jpg", "trailer" => "/tmp/blogbuster/terminator_large.jpg"})

  Video.create(title:"Inside Out", category_ids: [1], description:"Riley (Kaitlyn Dias) is a happy, hockey-loving 11-year-old Midwestern girl, but her world turns upside-down when she and her parents move to San Francisco. Riley's emotions -- led by Joy (Amy Poehler) -- try to guide her through this difficult, life-changing event. However, the stress of the move brings Sadness (Phyllis Smith) to the forefront. When Joy and Sadness are inadvertently swept into the far reaches of Riley's mind, the only emotions left in Headquarters are Anger, Fear and Disgust.", image_url:{"small_img" => "/tmp/3d_animations/inside_out_small.jpg", "trailer" => "/tmp/3d_animations/inside_out_large.jpg"})

  Video.create(title:"Avengers", category_ids: [3], description:"When Tony Stark (Robert Downey Jr.) jump-starts a dormant peacekeeping program, things go terribly awry, forcing him, Thor (Chris Hemsworth), the Incredible Hulk (Mark Ruffalo) and the rest of the Avengers to reassemble. As the fate of Earth hangs in the balance, the team is put to the ultimate test as they battle Ultron, a technological terror hell-bent on human extinction. Along the way, they encounter two mysterious and powerful newcomers, Pietro and Wanda Maximoff.", image_url:{"small_img" => "/tmp/blogbuster/avengers_small.jpg", "trailer" => "/tmp/blogbuster/avengers_large.png"})

  Video.create(title:"Meet The Robinsons", category_ids: [1], description:"Boy genius Lewis gives up hope of retrieving his latest invention, which was stolen by Bowler Hat Guy, then a young time-traveler named Wilbur Robinson arrives on the scene to whisk Lewis away in his time machine. The boys spend a day in the future with Wilbur's eccentric family and uncover an amazing secret at the same time.", image_url:{"small_img" => "/tmp/3d_animations/robinsons_small.jpg", "trailer" => "/tmp/3d_animations/robinsons_large.jpg"})

  Video.create(title:"Tranformers", category_ids: [3], description:"After an epic battle, a great city lies in ruins, but the Earth itself is saved. As humanity begins to pick up the pieces, a shadowy group emerges to try to take control of history. Meanwhile, an ancient and powerful new menace sets its sights on Earth. A new group of humans, led by Cade Yeager (Mark Wahlberg), helps Optimus Prime (Peter Cullen) and the Autobots rise up to meet their most fearsome challenge yet: a worldwide war of good versus evil.", image_url:{"small_img" => "/tmp/blogbuster/tranformers_small.jpg", "trailer" => "/tmp/blogbuster/tranformers_large.jpg"})

  Video.create(title:"KungFu Panda", category_ids: [1], description:"Po the panda (Jack Black) works in his family's noodle shop and dreams of becoming a kung-fu master. His dream becomes a reality when, unexpectedly, he must fulfill an ancient prophecy and study the skills with his idols, the Furious Five. Po needs all the wisdom, strength and ability he can muster to protect his people from an evil snow leopard.", image_url:{"small_img" => "/tmp/3d_animations/KungFu_Panda_3_small.jpg", "trailer" => "/tmp/3d_animations/KungFu-Panda_large.jpg"})

  Video.create(title: "Bleach", category_ids: [2], description: "Bleach (Japanese: ブリーチ Hepburn: Burīchi?) is a Japanese manga series written and illustrated by Tite Kubo. Bleach follows the adventures of the hotheaded teenager Ichigo Kurosaki after he obtains the powers of a Soul Reaper (死神 Shinigami?, literally, 'Death God')—a death personification similar to the Grim Reaper—from another Soul Reaper, Rukia Kuchiki. His new-found powers force him to take on the duties of defending humans from evil spirits and guiding departed souls to the afterlife, and set him on journeys to various ghostly realms of existence.", image_url:{"small_img" => "/tmp/2d_animations/bleach_small.jpg", "trailer" => "/tmp/2d_animations/bleach_large.jpg"})

  Video.create(title: "Naruto", category_ids: [2], description: "Naruto (ナルト?) is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, an adolescent ninja who constantly searches for recognition and dreams to become the Hokage, the ninja in his village who is acknowledged as the leader and the strongest of all. The series is based on a one-shot manga by Kishimoto that was published in the August 1997 issue of Akamaru Jump.", image_url:{"small_img" => "/tmp/2d_animations/naruto_small.jpg", "trailer" => "/tmp/2d_animations/naruto_large.jpg"})

  Video.create(title: "Lion King", category_ids: [2], description: "This Disney animated feature follows the adventures of the young lion Simba (Jonathan Taylor Thomas), the heir of his father, Mufasa (James Earl Jones). Simba's wicked uncle, Scar (Jeremy Irons), plots to usurp Mufasa's throne by luring father and son into a stampede of wildebeests. But Simba escapes, and only Mufasa is killed. Simba returns as an adult (Matthew Broderick) to take back his homeland from Scar with the help of his friends Timon (Nathan Lane) and Pumbaa (Ernie Sabella).", image_url:{"small_img" => "/tmp/2d_animations/lionking_small.jpg", "trailer" => "/tmp/2d_animations/lionking_large.jpg"})

  
  Video.create(title: "The Hangover", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/192248/p192248_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://www.flasking.com/blog/wp-content/uploads/2014/11/Blurb.jpg","http://www.aceshowbiz.com/images/still/the_hangover_part_ii_03.jpg"])


  Video.create(title: "Anchorman", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/34589/p34589_p_v8_ae.jpg", "trailer" => ""}, image_gallery: ["http://images.amcnetworks.com/ifc.com/wp-content/uploads/2012/03/033012_anchorman.jpg","http://www.squareeyed.tv/wp-content/uploads/2015/10/anchorman.jpg"])

  Video.create(title: "Borat", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/161918/p161918_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://www.bloglystream.com/wp-content/uploads/2015/06/Top-10-Funniest-Movies-Borat-2006.jpg","http://g-images.amazon.com/images/G/01/dvd/aplus/borat/600/borat_01_600.jpg"])


  Video.create(title: "Harold & Kumar Go to White Castle", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/34664/p34664_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://buzzchomp-4621.zippykid.netdna-cdn.com/wp-content/uploads/2014/07/harold-and-kumar-go-to-white-castle-burgers-560x330.jpg","http://www.fm96.com/files/2014/08/harold-and-kumar.jpg"])


  Video.create(title: "Airplane", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/dvdboxart/1671/p1671_d_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://static.deathandtaxesmag.com/uploads/2015/02/airplane-zero-hour.jpg","http://thehungrysuitcase.com/wp-content/uploads/2014/03/airplane-movie-2.png"])


  Video.create(title: "American Pie", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/23343/p23343_p_v8_ae.jpg", "trailer" => ""}, image_gallery: ["http://screencrush.com/442/files/2013/08/ampie.jpg","http://wfiles.brothersoft.com/a/american_pie_66893-1280x1024.jpg"])


  Video.create(title: "Ghostbusters", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t2.gstatic.com/images?q=tbn:ANd9GcR2HYX2BJ9gOAyt7Tf3BAS4NYVr42HqeOWjM9Mw-ifGwHhU9x51", "trailer" => ""}, image_gallery: ["http://www.ghostbusters.com/sites/gbusters/files/spotlight_images/gb-header-cast.jpg","http://www.swissgb.ch/wp-content/uploads/2013/04/gb1-006.jpg"])


  Video.create(title: "The 40 year old virgin", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/36173/p36173_p_v8_ak.jpg", "trailer" => ""}, image_gallery: ["http://amazonadviser.com/files/2015/10/the-40-year-old-virgin-was-shut-down-2-days-into-production-for-a-ridiculous-reason.jpg","https://i.ytimg.com/vi/vbFTL14PehA/maxresdefault.jpg"])

  Video.create(title: "Scary Movie", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/25765/p25765_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["https://metrouk2.files.wordpress.com/2015/07/elib_1376073.jpg?w=748&h=586&crop=1","http://images.amcnetworks.com/ifc.com/wp-content/uploads/2012/12/scary-movie-2-2001-15-g.jpg"])


  Video.create(title: "Austin Powers", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t3.gstatic.com/images?q=tbn:ANd9GcRL9p4e-LSjwXBqgvJjNQsZmRLqRf1L7mYp4VpGasD7ZDgziA4p", "trailer" => ""}, image_gallery: ["http://www.audienceseverywhere.net/wp-content/uploads/2015/07/Austin-Powers-International-Man-Of-Mystery-1.jpg","http://media.theiapolis.com/d4/hMI/i1ZFI/k4/l201W/w1GZ/mike-myers-as-austin-powers-in-austin-powers.jpg"])


  Video.create(title: "The Big Lebowski", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t3.gstatic.com/images?q=tbn:ANd9GcRBYp315X-0pNvI-Dvqj8FR0AGdF39VCprXpurd0cQel__e17CP", "trailer" => ""}, image_gallery: ["http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/587698547.png","http://www.eonline.com/eol_images/Entire_Site/201507/rs_500x235-150107113355-BigLebowski1.gif"])


  Video.create(title: "National Lampoon's Animal House", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t0.gstatic.com/images?q=tbn:ANd9GcRXnkai6Y7PxAxRjIcWf3mh_H3RV7bLkaEV8N8nuK8KTu7hy71g", "trailer" => ""}, image_gallery: ["https://filmfork-cdn.s3.amazonaws.com/content/animalhouse_inline.jpg","http://3.bp.blogspot.com/-d4nqzeV_uyo/UJRPh8pfoNI/AAAAAAAAEZ4/64c9Yk76OI0/s1600/A-1886.jpg"])


  Video.create(title: "Paul", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/8371978/p8371978_p_v8_ab.jpg", "trailer" => ""}, image_gallery: ["https://jbmediamidkent.files.wordpress.com/2012/10/paul-movie-cartoon-1-4960991.jpg","http://images7.alphacoders.com/415/415458.jpg"])

  
  Video.create(title: "DodgeBall", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/33984/p33984_p_v8_ad.jpg", "trailer" => ""}, image_gallery: ["http://i.dailymail.co.uk/i/pix/2012/10/08/article-2214670-0177FDCC0000044D-85_634x422.jpg","http://insessionfilm.com/wp-content/uploads/2013/04/still-of-vince-vaughn-justin-long-stephen-root-christine-taylor-alan-tudyk-and-chris-williams-in-dodgeball-a-true-underdog-story.jpg"])


  Video.create(title: "Home Alone", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcTdEoLOi9ncuhBzSRWrI00a_KWHGI_9KJN-d35rk_3Sws5ygZq2", "trailer" => ""}, image_gallery: ["http://images2.static-bluray.com/reviews/823_5.jpg","http://images5.fanpop.com/image/photos/30900000/Home-Alone-home-alone-30912294-2560-1803.jpg"])

Video.create(title: "Elf", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t3.gstatic.com/images?q=tbn:ANd9GcSt4AaH8aQNb6hrdHev-0J_xymlsy3aQDxGLXVDmU812etMBFRN", "trailer" => ""}, image_gallery: ["https://penrynpicturehouse.files.wordpress.com/2015/11/elf-04.jpg","http://athenacinema.com/wp-content/uploads/2014/11/elf-movie-christmas-jon-favreau-will-ferrell.jpeg"])

Video.create(title: "Shaun of the Dead", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/34914/p34914_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://baldmove.com/wp-content/uploads/2015/05/shaunofthedead.jpg","http://www.blastr.com/sites/blastr/files/shaunofthedead.jpg"])

Video.create(title: "Old School", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t0.gstatic.com/images?q=tbn:ANd9GcSVkeRBAYIkQMewW0T7EzJejTIML5jkDzyUmrTdmFHxpawUTVCr", "trailer" => ""}, image_gallery: ["https://moviefiednyc.files.wordpress.com/2013/09/06a58-old-school1.jpeg","http://images.starpulse.com/Photos/Previews/Old-School-movie-21.jpg"])

Video.create(title: "Office Space", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/22554/p22554_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://www.streetfoodcinema.com/cinema2014foodstreet/wp-content/uploads/2015/03/SFC-Event-Banner-Office-Space-980x363.png","http://p.fod4.com/p/media/6bff9b5b67/Orfg8YyKR8OvZx62Tqbx_OfficeSpaceThumb.jpg"])

Video.create(title: "Napoleon Dynamite", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/34617/p34617_p_v8_ab.jpg", "trailer" => ""}, image_gallery: ["http://tbhmovie.com/wp-content/uploads/2015/09/napoleon_dynamite_541.jpg","http://filmgarb.com/wp-content/uploads/film-napoleon_dynamite-2004-napoleon_dynamite-jonheder-tshirts-wolves_tshirt.jpg"])

Video.create(title: "Monty Python's Life of Brian", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t3.gstatic.com/images?q=tbn:ANd9GcQVARtaz3SyKYj8qh8IRZIR3DXWgtpMaa6Q2g6dPYZUtCeqeTLe", "trailer" => ""}, image_gallery: ["http://www.thefocuspull.com/wp-content/uploads/2014/12/life-of-brian.jpeg","https://s3.amazonaws.com/tribeca_cms_production/uploads/film/photo_2/550a1192b57ce9fad5000026/Life-of-Brian_web_2.jpg"])

Video.create(title: "The Naked Gun", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/11300/p11300_p_v8_ab.jpg", "trailer" => ""}, image_gallery: ["http://www.ew.com/sites/default/files/styles/tout_image_612x380/public/i/2013/12/13/leslie-nielson.jpg?itok=mE_ZWY57","http://pressurelife.com/wp-content/uploads/2015/06/naked-gun-33%E2%85%93-the-final-insult.jpg"])

Video.create(title: "American Wedding", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/32304/p32304_p_v8_ak.jpg", "trailer" => ""}, image_gallery: ["http://wfiles.brothersoft.com/a/american_wedding_66973-1600x1200.jpg","http://blog.carmenandingo.com/wp-content/uploads/2014/04/Ali-Zach-Wedding-in-Tuscany-Day-5-The-Wedding-0511.jpg"])

Video.create(title: "This Is the End", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t3.gstatic.com/images?q=tbn:ANd9GcT0PP0XmHTr5C98JVSu4OANF8QZ1OIovn4GvBgPjrDPWv5pWF4l", "trailer" => ""}, image_gallery: ["http://rmitcatalyst.com/wp-content/uploads/2013/07/This-Is-the-End.jpg","http://cdn.collider.com/wp-content/uploads/this-is-the-end-michael-cera.jpg"])

Video.create(title: "Trading Places", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t3.gstatic.com/images?q=tbn:ANd9GcTIyYTDkSAazejtIC682ILqDk-rISH9HeOS6Pn4GZwQ5EKPYR5k", "trailer" => ""}, image_gallery: ["http://s3.amazonaws.com/auteurs_production/images/film/trading-places/w448/trading-places.jpg","http://www.the-arcade.ie/wp-content/uploads/2015/12/ed.jpg"])

Video.create(title: "Monty Python and the Holy Grail", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t3.gstatic.com/images?q=tbn:ANd9GcTWBV2aFE5JPT8DP1tlH-uvt2AFhdsAoCP5ki2Z8nRcIOtkh8XS", "trailer" => ""}, image_gallery: ["http://boiseclassicmovies.com/wp-content/themes/prime-theme/gbs-addons/advanced-thumbnail/timthumb.php?src=http://boiseclassicmovies.com/wp-content/uploads/2012/11/MontyPythonandtheHolyGrail.png&w=700&h=400&zc=1&s=0&a=0&q=89&cc=0000000","http://www.charlotteobserver.com/entertainment/ent-columns-blogs/state-of-the-art/y45l7/picture21496122/ALTERNATES/FREE_640/HolyGrail034"])

Video.create(title: "Ace Ventura", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://t3.gstatic.com/images?q=tbn:ANd9GcQpN-AA0fUWKinS5y72xioD_-o0W6z3yG7BvomYaIMtU_bw-3Ev", "trailer" => ""}, image_gallery: ["http://media3.onsugar.com/files/2013/08/13/929/n/1922283/3fab9d90134e6b98_ACE.preview.jpg","https://metrouk2.files.wordpress.com/2014/12/ace-ventura-when-nature-calls.jpg?w=748&h=497&crop=1"])

Video.create(title: "Knocked Up", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/165095/p165095_p_v8_ah.jpg", "trailer" => ""}, image_gallery: ["http://www.cinemablend.com/images/news_img/78487/knocked_up_78487.jpg","https://thecinemamonster.files.wordpress.com/2013/05/knocked-up-1024x680.jpg"])

Video.create(title: "Road Trip", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/dvdboxart/24671/p24671_d_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://movieboozer.com/wp-content/uploads/2015/07/Paper-Towns-Road-Trip1.jpg","https://i.ytimg.com/vi/RXmANh0-2Bg/maxresdefault.jpg"])

Video.create(title: "Forgetting Sarah Marshall", category_ids: [4], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/175320/p175320_p_v8_ah.jpg", "trailer" => ""}, image_gallery: ["http://www.styleite.com/wp-content/uploads/2015/01/forgetting-sarah-marshall5.jpg","http://cdn.moviestillsdb.com/sm/243534c5705b794fbf4d660e9c57575f/forgetting-sarah-marshall.jpg"])



Video.create(title: "Frozen", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t0.gstatic.com/images?q=tbn:ANd9GcTIaSaZM-kGnMKWNNMW9-_yv008JrEh58Ab3DAV1geUNJvXeyXS", "trailer" => ""}, image_gallery: ["http://guardianlv.com/wp-content/uploads/2014/09/Frozen-Continues-to-Spread-Like-Ice.jpg","https://flavorwire.files.wordpress.com/2013/11/frozen2.jpg"])

Video.create(title: "Toy Story", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/17420/p17420_p_v8_ab.jpg", "trailer" => ""}, image_gallery: ["http://www.thedisneymoviereview.com/wp-content/uploads/2015/03/group-disney-announces-toy-story-4-is-happening-126226.jpeg","http://imagesmtv-a.akamaihd.net/uri/mgid:file:http:shared:mtv.com/news/wp-content/uploads/2015/08/Woody-and-Buzz-flying-Toy-Story-1439571683.gif"])

Video.create(title: "Monsters Inc", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t2.gstatic.com/images?q=tbn:ANd9GcTaeFK9RkQM00A7cbfc2iI3C573rSkbsubdyrY-ZZnT4jk0O_cB", "trailer" => ""}, image_gallery: ["http://www.trbimg.com/img-50d093b1/turbine/sc-mov-1217-monsters-inc-3d-20121219-001/600","http://polls-polarb-com.a.ssl.fastly.net/000/112/445/112445-1-large-41b8b06b391435a8.jpg"])

Video.create(title: "How to Train Your Dragon", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/3625299/p3625299_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://nowstreamingpod.com/wp-content/uploads/2015/03/how-to-train-your-dragon-2-hd-review-golden-globes-2015-how-to-train-your-dragon-2-snaps-up-best-animated-movie.jpeg","http://www.designbolts.com/wp-content/uploads/2014/05/how-to-train-your-dragon-2-hd-wallpaper-1920x10801.jpg"])

Video.create(title: "Snow White and the Seven Dwarfs", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/15972/p15972_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://rointheknow.com/wp-content/uploads/2015/05/snow-white-and-the-seven-dwarfs-1920x1200.jpg","http://www.hercampus.com/sites/default/files/2015/05/07/Snow_white_and_the_seven_dwarves-1.png"])

Video.create(title: "Cars", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/159400/p159400_p_v7_aa.jpg", "trailer" => ""}, image_gallery: ["https://i.ytimg.com/vi/SbXIj2T-_uk/maxresdefault.jpg","http://www.moviesteve.com/wp-content/uploads/2013/08/Lightning-McQueen-cars.jpg"])

Video.create(title: "Tangled", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t3.gstatic.com/images?q=tbn:ANd9GcSukZhxL8HfXfR5r-yCxq6Ct4Er8yx6juL8P3lvuHn42XdxF7JH", "trailer" => ""}, image_gallery: ["http://assets1.ignimgs.com/2015/06/02/rapunzel-tangled-1280x1024jpg-e3aaf8_1280w.jpg","https://i.ytimg.com/vi/je4nDvNJXsg/maxresdefault.jpg"])

Video.create(title: "Beauty and the Beast", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcR5P4Y0zl6gBYjF_8wlO-EbRgnyI3oKHEzeQeALLDSFrS81C2as", "trailer" => ""}, image_gallery: ["http://ia.media-imdb.com/images/M/MV5BMjE3MzcwNTYzMV5BMl5BanBnXkFtZTcwMzE1ODAyNw@@._V1_SX640_SY720_.jpg","http://ia.media-imdb.com/images/M/MV5BMTc1NzY1MDMzNV5BMl5BanBnXkFtZTcwMjI1ODAyNw@@._V1_SX1024_CR0,0,1024,598_AL_.jpg"])

Video.create(title: "Shrek", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t2.gstatic.com/images?q=tbn:ANd9GcS_OkJKQ6ZpDV_xhC0L9zyHEcKMlV9x3Q30LF6MOE0nV1U6r09p", "trailer" => ""}, image_gallery: ["http://spinoff.comicbookresources.com/wp-content/uploads/2015/08/shrek.jpg","https://ladygeekgirl.files.wordpress.com/2014/08/shrek-the-third.jpg"])

Video.create(title: "Spirited Away", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcS6MveoDoJOg9-wMvtHE4ak_-HDZeYS1egb9PwRcf8lhrtcppMc", "trailer" => ""}, image_gallery: ["http://i.cubeupload.com/oWC9FU.gif","https://i.ytimg.com/vi/_jGXcSBcvQQ/maxresdefault.jpg"])

Video.create(title: "Finding Nemo", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcSoStMb2jeN136xQhf2g3ROpTB9Dker9IlfGbMbwYB3ruC9VcOj", "trailer" => ""}, image_gallery: ["http://aimg.disneystore.com/content/ds/skyway/2012/category/full/cp_FWB_FindingNemo_20120926.jpg","http://vignette4.wikia.nocookie.net/pixar/images/5/50/Finding-nemo-bruce-anchor-chum.jpg/revision/latest?cb=20120816222738"])

Video.create(title: "The Jungle Book", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/55309/p55309_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["https://i.ytimg.com/vi/kFUoCd6Cz4M/maxresdefault.jpg","http://www.toonbarn.com/wordpress/wp-content/uploads/2014/12/the-jungle-book.jpg"])

Video.create(title: "Wreck-It Ralph", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t3.gstatic.com/images?q=tbn:ANd9GcR6e2NEBAIaJQ8_-1KSrUc1NKuyBWAK0ch7DerecaEhYEow1dnL", "trailer" => ""}, image_gallery: ["http://vignette4.wikia.nocookie.net/disney/images/d/d6/Wreck-It-Ralph-Disney-movie-2012_1920x1200.jpg/revision/latest?cb=20130417192902","http://abovethebuzz.com/wp-content/uploads/2013/03/Wreck-it-Ralph.jpg"])

Video.create(title: "A Bug's Life", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcTvu0n_KD6eVuB_g2UHKu0y6nzgLk6GIOYAMjEbdUvza_0UhnTy", "trailer" => ""}, image_gallery: ["http://www.filmtakeout.com/wp-content/uploads/2015/11/108ef-bug-disneyscreencaps_com-10197-png.jpg","https://fanart.tv/fanart/movies/9487/moviebackground/a-bugs-life-51229893a476c.jpg"])

Video.create(title: "Brave", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t0.gstatic.com/images?q=tbn:ANd9GcSuKUcpKMfuY1En5kWsJB2Xe-dqu-yYrQM6KTps3-Mti04lgmSY", "trailer" => ""}, image_gallery: ["http://www.moviequotesandmore.com/wp-content/uploads/2015/04/brave-91.jpg","https://i.ytimg.com/vi/TEHWDA_6e3M/maxresdefault.jpg"])

Video.create(title: "Pinocchio", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/9399/p9399_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["https://i.ytimg.com/vi/lOJs56BmATw/maxresdefault.jpg","https://i.ytimg.com/vi/e-sLTP0hBK8/maxresdefault.jpg"])

Video.create(title: "Monsters University", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcRwIJWk6sSJtE5FNXg1pK4lFu5tbeIvi81BKV2SG4wTA1lWfrMH", "trailer" => ""}, image_gallery: ["http://images.clipartpanda.com/monsters-university-clipart-MONSTERS_UNIVERSITY_pixelon.jpg","http://www.nerdist.com/wp-content/uploads/2013/06/monsters1.jpg"])

Video.create(title: "Cinderella", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://t2.gstatic.com/images?q=tbn:ANd9GcQbS4b6d6C3GusXutZh5M-YDle9sYV3wMB6uXKLUeW-QoIQsdk8", "trailer" => ""}, image_gallery: ["http://i.ytimg.com/vi/CUxAlnYP5aU/maxresdefault.jpg","https://i.ytimg.com/vi/e7MTUWsELiM/maxresdefault.jpg"])

Video.create(title: "Aladdin", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://t2.gstatic.com/images?q=tbn:ANd9GcSsSEOwh6rx0SSBgd5IHoAZMaU3jLtyxMfFbtfJFTjc-SYHsFQL", "trailer" => ""}, image_gallery: ["https://pmcvariety.files.wordpress.com/2014/08/aladdin-1992.jpg?w=670&h=377&crop=1","http://wondersofdisney2.yolasite.com/resources/aladdin/group/aladdin_genie_abucarpet.png"])

Video.create(title: "The Little Mermaid", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcRUmX0QL-sT2V7U21NGM3AhKEiX_b4Qwg4vAsCV2ZacBNU8VcXw", "trailer" => ""}, image_gallery: ["http://www.asset1.net/tv/pictures/movie/the-little-mermaid-ariel's-beginning-2008/the-little-mermaid-3-ariels-beginning-DI-01l.jpg","https://lumiere-a.akamaihd.net/v1/images/image_ccbe2baf.jpeg"])

Video.create(title: "Lilo & Stitch", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/29095/p29095_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["https://images-na.ssl-images-amazon.com/images/G/01/dvd/disney/lilo/lilo4_L.jpg","http://i.ytimg.com/vi/FDUifgXHPuo/maxresdefault.jpg"])

Video.create(title: "Bambi", category_ids: [2], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/11782/p11782_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://wallpapercave.com/wp/YD70POD.png","http://data.whicdn.com/images/39242858/original.jpg"])

Video.create(title: "The Incredibles", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/35032/p35032_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://www.tiogatowncenter.com/wp-content/uploads/2015/06/incredibles.jpg","https://i.ytimg.com/vi/DBO3DOBbk7Q/maxresdefault.jpg"])

Video.create(title: "WALL-E", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/174374/p174374_p_v8_ab.jpg", "trailer" => ""}, image_gallery: ["http://vignette1.wikia.nocookie.net/pixar/images/6/66/Wall%E2%80%A2e_and_eve.png/revision/latest?cb=20110429104159","http://vignette2.wikia.nocookie.net/pixar/images/c/ce/Wall-E_Cubecolors.jpg/revision/latest?cb=20090615011459"])

Video.create(title: "Madagascar: Escape 2 Africa", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/176527/p176527_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://hdwallpapersfit.com/wp-content/uploads/2015/03/madagascar-wallpaper-3d-movies-wallpaper-madagascar-wallpaper.jpg","http://images2.fanpop.com/image/photos/8700000/Madagascar-2-madagascar-escape-2-africa-8721824-1280-1024.jpg"])

Video.create(title: "Big Hero 6", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t2.gstatic.com/images?q=tbn:ANd9GcQzyu98HxFhB68UKqRKSrTKknXHI-gtSTAAX0CGiKBM980CFhI1", "trailer" => ""}, image_gallery: ["http://static.comicvine.com/uploads/original/0/40/4204335-bighero6team.jpg","http://images6.fanpop.com/image/photos/37600000/Big-Hero-6-Wallpaper-big-hero-6-37679026-1280-720.png"])

Video.create(title: "The Good Dinosaur", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcRGAyjFdJJlz5XtNdDbO0fmwLswSdIZNTGMBdrVFi5nnss4AlHW", "trailer" => ""}, image_gallery: ["https://lumiere-a.akamaihd.net/v1/images/image_008fe539.png","http://static.independent.co.uk/s3fs-public/thumbnails/image/2015/12/01/16/nycu8byhvifswllfwdyd.jpg"])

Video.create(title: "Despicable Me 2", category_ids: [1], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcQIlmuxNAmbwJsmcwNaRiyM21KAn8UZjgNxzbJK3m3vB7pdwDMu", "trailer" => ""}, image_gallery: ["http://palyvoice.com/wp-content/uploads/2014/02/Despicable-Me-2-minions-2.jpg","http://www.the-numbers.com/video/Despicable-Me-2/Despicable-Me-2-poster.jpg","http://cinemasiren.com/wp-content/uploads/2013/07/Despicable-Me-2-Cover-Image-550x216.jpg","http://www.openlettersmonthly.com/issue/wp-content/uploads/2013/07/1Definitely-not-a-good-first-impression.jpg","https://i.ytimg.com/vi/m4VlD-JP0ug/maxresdefault.jpg"])

Video.create(title: "The Dark Knight", category_ids: [3], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/173378/p173378_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://www.goliath.com/wp-content/uploads/2015/11/batman-the-dark-knight-movie-hd-wallpaper-2560x1600-3857.jpg","http://www.underdaleblogs.org/granleese/files/2014/05/The-Dark-Knight-Rises-1r72kqj.jpg"])

Video.create(title: "Casino Royale", category_ids: [3], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/159167/p159167_p_v8_aa.jpg", "trailer" => ""}, image_gallery: ["http://screenmusings.org/movie/dvd/Casino-Royale/images/Casino-Royale-0678.jpg","https://sleeplessthought.files.wordpress.com/2015/10/casino-royale-trailer03.jpg"])

Video.create(title: "Star Wars: The Force Awakens", category_ids: [3], description: "Some description", image_url:{"small_img" => "http://t0.gstatic.com/images?q=tbn:ANd9GcQZKZtrlY3dnzsjBIGKR_b1QhkgZfM4-FIcH61uHnLQRR3WpNhk", "trailer" => ""}, image_gallery: ["http://www.theforceawakensblog.com/wp-content/uploads/2015/10/Latest-The-Force-Awakens-Trailer-Description.jpg","http://www.starwars.com/the-force-awakens/images/share_1200x627.jpg"])

Video.create(title: "X-Men", category_ids: [3], description: "Some description", image_url:{"small_img" => "http://www.gstatic.com/tv/thumb/movieposters/31889/p31889_p_v8_ac.jpg", "trailer" => ""}, image_gallery: ["https://cinemacrackdown.files.wordpress.com/2015/04/njrvtehummpd49zdrxywmk4lvvx.jpg","http://static.comicvine.com/uploads/original/11115/111158682/3898793-2798298936-The-X.jpg"])

Video.create(title: "Sherlock Holmes: A Game of Shadows", category_ids: [3], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcRoS5YR7TpggBTIat_TbaMhrFalXirWRs67CMuNlaAhZxSzARIG", "trailer" => ""}, image_gallery: ["http://visualhollywood.com/movies_2011/sherlock_holmes_2/photos_studio/data/images1/sherlock_holmes_a_game_of_shadows_(2011)_screen_scene030.jpg","http://www.mbc.net/default/mediaObject/Photos/Grid/2014/october/25-10-2014/SHERLOCK-HOLMES-A-GAME-OF-SHADOWS/original/d92ba09f825f6377c5aa568cc8b70b9218677803/SHERLOCK-HOLMES-A-GAME-OF-SHADOWS.jpg"])

Video.create(title: "Mission: Impossible – Rogue Nation", category_ids: [3], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcQ2QqFVBlMs6FLqvr_q_NiiylRGzbt47aGTDCHdEEOZqp8zclxe", "trailer" => ""}, image_gallery: ["http://screenrant.com/wp-content/uploads/Sean-Harris-in-Mission-Impossible-5.jpg","http://images-cdn.moviepilot.com/image/upload/c_fill,h_300,w_600/t_mp_quality/mi5top-mission-impossible-5-is-taurus-a-sign-of-things-to-come-jpeg-256231.jpg"])

Video.create(title: "The Amazing Spider-Man", category_ids: [3], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcQVzjsQN4VSZaWDXWYf1dCLQ6fU3ArTWTMh9fwmYcMke_RsOgP6", "trailer" => ""}, image_gallery: ["http://www.blastr.com/sites/blastr/files/3948927-5231386696-the-a.jpg","http://cdn3.whatculture.com/wp-content/uploads/2014/12/the-amazing-spiderman-scarlett-spider.jpg"])

Video.create(title: "The Maze Runner", category_ids: [3], description: "Some description", image_url:{"small_img" => "https://upload.wikimedia.org/wikipedia/en/thumb/b/be/The_Maze_Runner_poster.jpg/220px-The_Maze_Runner_poster.jpg", "trailer" => ""}, image_gallery: ["http://static.srcdn.com/slir/w620-h320-q90-c620:320/wp-content/uploads/The-Maze-Runner-Movie-Gladers-Cast.jpg","http://www.giantfreakinrobot.com/wp-content/uploads/2014/03/13950963871.jpg"])

Video.create(title: "Jurassic World", category_ids: [3], description: "Some description", image_url:{"small_img" => "http://t1.gstatic.com/images?q=tbn:ANd9GcT9t_mvZu0k-wS_QqvQmPKc6FMkwJoj0HgUjwLJK7uGG_NtZBxV", "trailer" => ""}, image_gallery: ["http://blogs-images.forbes.com/markhughes/files/2015/06/JURASSIC-WORLD-15-1940x1042.jpg","http://i2.cdn.turner.com/money/dam/assets/150608103918-jurassic-world-training-780x439.jpg"])