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
 

  puts "Creating Videos..."
  Video.create(title:"Monk", category_ids: [4], description:"Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.", image_url:{"small_img" => "/tmp/monk.jpg", "large_img" => "/tmp/monk_large.jpg"}, )

  Video.create(title:"Ice Age 3", category_ids: [1], description:"After Sid (John Leguizamo) pilfers some dinosaur eggs, Manny (Ray Romano), Diego (Denis Leary) and the rest of their prehistoric pals enter a mysterious, underground world to rescue the hapless sloth", image_url:{"small_img" => "/tmp/3d_animations/ice_age_small.jpg", "large_img" => "/tmp/3d_animations/iceage_large.jpg"})

  Video.create(title:"Terminator", category_ids: [3], description:"When John Connor (Jason Clarke), leader of the human resistance against Skynet, sends Kyle Reese (Jai Courtney) back to 1984 to protect his mother, Sarah (Emilia Clarke), from a Terminator assassin, an unexpected turn of events creates an altered timeline. Instead of a scared waitress", image_url:{"small_img" => "/tmp/blogbuster/terminator_small.jpg", "large_img" => "/tmp/blogbuster/terminator_large.jpg"})

  Video.create(title:"Inside Out", category_ids: [1], description:"Riley (Kaitlyn Dias) is a happy, hockey-loving 11-year-old Midwestern girl, but her world turns upside-down when she and her parents move to San Francisco. Riley's emotions -- led by Joy (Amy Poehler) -- try to guide her through this difficult, life-changing event. However, the stress of the move brings Sadness (Phyllis Smith) to the forefront. When Joy and Sadness are inadvertently swept into the far reaches of Riley's mind, the only emotions left in Headquarters are Anger, Fear and Disgust.", image_url:{"small_img" => "/tmp/3d_animations/inside_out_small.jpg", "large_img" => "/tmp/3d_animations/inside_out_large.jpg"})

  Video.create(title:"Avengers", category_ids: [3], description:"When Tony Stark (Robert Downey Jr.) jump-starts a dormant peacekeeping program, things go terribly awry, forcing him, Thor (Chris Hemsworth), the Incredible Hulk (Mark Ruffalo) and the rest of the Avengers to reassemble. As the fate of Earth hangs in the balance, the team is put to the ultimate test as they battle Ultron, a technological terror hell-bent on human extinction. Along the way, they encounter two mysterious and powerful newcomers, Pietro and Wanda Maximoff.", image_url:{"small_img" => "/tmp/blogbuster/avengers_small.jpg", "large_img" => "/tmp/blogbuster/avengers_large.png"})

  Video.create(title:"Meet The Robinsons", category_ids: [1], description:"Boy genius Lewis gives up hope of retrieving his latest invention, which was stolen by Bowler Hat Guy, then a young time-traveler named Wilbur Robinson arrives on the scene to whisk Lewis away in his time machine. The boys spend a day in the future with Wilbur's eccentric family and uncover an amazing secret at the same time.", image_url:{"small_img" => "/tmp/3d_animations/robinsons_small.jpg", "large_img" => "/tmp/3d_animations/robinsons_large.jpg"})

  Video.create(title:"Tranformers", category_ids: [3], description:"After an epic battle, a great city lies in ruins, but the Earth itself is saved. As humanity begins to pick up the pieces, a shadowy group emerges to try to take control of history. Meanwhile, an ancient and powerful new menace sets its sights on Earth. A new group of humans, led by Cade Yeager (Mark Wahlberg), helps Optimus Prime (Peter Cullen) and the Autobots rise up to meet their most fearsome challenge yet: a worldwide war of good versus evil.", image_url:{"small_img" => "/tmp/blogbuster/tranformers_small.jpg", "large_img" => "/tmp/blogbuster/tranformers_large.jpg"})

  Video.create(title:"KungFu Panda", category_ids: [1], description:"Po the panda (Jack Black) works in his family's noodle shop and dreams of becoming a kung-fu master. His dream becomes a reality when, unexpectedly, he must fulfill an ancient prophecy and study the skills with his idols, the Furious Five. Po needs all the wisdom, strength and ability he can muster to protect his people from an evil snow leopard.", image_url:{"small_img" => "/tmp/3d_animations/KungFu_Panda_3_small.jpg", "large_img" => "/tmp/3d_animations/KungFu-Panda_large.jpg"})

  Video.create(title: "Bleach", category_ids: [2], description: "Bleach (Japanese: ブリーチ Hepburn: Burīchi?) is a Japanese manga series written and illustrated by Tite Kubo. Bleach follows the adventures of the hotheaded teenager Ichigo Kurosaki after he obtains the powers of a Soul Reaper (死神 Shinigami?, literally, 'Death God')—a death personification similar to the Grim Reaper—from another Soul Reaper, Rukia Kuchiki. His new-found powers force him to take on the duties of defending humans from evil spirits and guiding departed souls to the afterlife, and set him on journeys to various ghostly realms of existence.", image_url:{"small_img" => "/tmp/2d_animations/bleach_small.jpg", "large_img" => "/tmp/2d_animations/bleach_large.jpg"})

  Video.create(title: "Naruto", category_ids: [2], description: "Naruto (ナルト?) is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, an adolescent ninja who constantly searches for recognition and dreams to become the Hokage, the ninja in his village who is acknowledged as the leader and the strongest of all. The series is based on a one-shot manga by Kishimoto that was published in the August 1997 issue of Akamaru Jump.", image_url:{"small_img" => "/tmp/2d_animations/naruto_small.jpg", "large_img" => "/tmp/2d_animations/naruto_large.jpg"})

  Video.create(title: "Lion King", category_ids: [2], description: "This Disney animated feature follows the adventures of the young lion Simba (Jonathan Taylor Thomas), the heir of his father, Mufasa (James Earl Jones). Simba's wicked uncle, Scar (Jeremy Irons), plots to usurp Mufasa's throne by luring father and son into a stampede of wildebeests. But Simba escapes, and only Mufasa is killed. Simba returns as an adult (Matthew Broderick) to take back his homeland from Scar with the help of his friends Timon (Nathan Lane) and Pumbaa (Ernie Sabella).", image_url:{"small_img" => "/tmp/2d_animations/lionking_small.jpg", "large_img" => "/tmp/2d_animations/lionking_large.jpg"})