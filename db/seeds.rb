# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  # users = User.create([
  #   { name: 'Joe', email: 'joe@email.com', password_digest: 'foobar' },
  #   { name: 'Sally', email: 'sally@email.com', password_digest: 'foobar' },
  #   { name: 'Frank', email: 'frank@email.com', password_digest: 'foobar' }
  #   ])

  # Gerry's Example
  #Itinerary.create(name: 'My Itinerary', date: 20150101, user_id: 1)

  # events_itineraries = EventsItinerary.create([
  #   { itinerary_id: 1, event_id: 1 },
  #   { itinerary_id: 1, event_id: 5 },
  #   { itinerary_id: 1, event_id: 3 },
  #   { itinerary_id: 2, event_id: 5 },
  #   { itinerary_id: 2, event_id: 2 },
  #   { itinerary_id: 3, event_id: 3 },
  #   { itinerary_id: 3, event_id: 1 },
  #   { itinerary_id: 3, event_id: 4 },
  #   { itinerary_id: 3, event_id: 2 },
  #   { itinerary_id: 4, event_id: 2 },
  #   { itinerary_id: 5, event_id: 4 },
  #   { itinerary_id: 5, event_id: 5 },
  #   { itinerary_id: 1, event_id: 4 },
  #   { itinerary_id: 1, event_id: 2 },
  #   { itinerary_id: 2, event_id: 1 },
  #   { itinerary_id: 4, event_id: 4 }
  #   ])

  events = Event.create([
  { name: 'World of Coke', description: 'Coke museum', address: '121 Baker St NW Atlanta, GA 30313', phone: '(404) 676-5151', 
    web_address: 'http://www.worldofcoca-cola.com/', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSH00NmV_MA2Mwauhhvo0H3l08YZl8wP3PhlCXPAO97z7LUDl4b', latitude: 33.762742, longitude: -84.392664, category: 1 }

  { name: 'Auburn Spring Festival', description:'Spring festival in Historic Sweet Auburn district 5/8/2015 - 5/10/2015.',address:'240 Auburn Avenue Atlanta, GA 30303', phone:'404-681-4667', web_address:'', image_address:'', latitude:33.762742, longitude:-84.392664, category: 1},

  { name: 'Teds Montana Grill', description: 'Tradional American burgers with amazing butter chip pickles brought to the table.', address: '133 Luckie St  NW Atlanta, GA 30303', phone: '(404)521-9796', web_address: 'http://www.tedsmontanagrill.com/', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbA32226kB7IiS1H4M8dbj3q17Z8-IE0e94GSruM6PWKFic1la', latitude: 33.7586402, longitude: -84.390548, category: 3},

  { name: 'Jalapeno Charlies', description: 'Mexican and Latin American menu.', address: '234 Peachtree', phone: '(404)581-0884', 
    web_address: 'http://www.jalapenocharlies.com/', image_address: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSbvbJSNSe-Dw0hjuCo6NSKQlbJlB7WVgwl2_iyG4DdgjqY1axuSQ', latitude: 33.759895, longitude: -84.387770, category: 3 },

  { name: 'GA Aquarium', description: 'big-ass aquarium and lots of fish. Yeah and some screaming kids, but its awesome!', address: '225 Baker Street NW Atlanta, GA 30313', phone: '4041234567', web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 33.763382, longitude: -84.395110, category: 2 },
  
  { name: 'Rathbuns', description: 'The Marqui Hotels signature restaurant with fine steaks, seafood and a great wine list.', address: '265 Peachtree Centre Ave Atlanta, GA 30303', phone: '(404)586-6134', 
    web_address: 'http://www.searatlanta.com/', image_address: 'wwww.123.com', latitude: 33.756172, longitude: -84.364782, category: 3 },

  { name: 'High Velocity', description: 'The Marqui Hotels sports bar restaurant ideal for parties and grabbing a meal with friends.', address: '265 Peachtree Centre Ave Atlanta, GA 30303', phone: '(404)521-0000', 
    web_address: 'http://www.highvelocityatlanta.com/', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRFHDTqqCRGbUgxA8zFH6KlJM5CG3Uwe7NyX1hc99uYlxNrUEiC', latitude: 33.761583, longitude: --84.385660, category: 3 },

  { name: 'Sear ', description: 'Steak House', address: '345 Peachtree', phone: '(404)586-6134', 
    web_address: 'http://www.searatlanta.com/', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTS_csrzUv0sfwlUBNbzuEPdJ2u4TZUF1YMGQCGA52yhB9-ZOgK', latitude: 33.761583, longitude: -84.385660, category: 3 },

  { name: 'Room @ Twelve Hotel', description: 'Fine culinary sushi, seafood and steaks at a prime hotel location.', address: '345 Peachtree', phone: '(404)418-1250', web_address: 'http://www.roomattwelve.com/roomhome.htm', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRitymyvdiKL2ADjiJDBGD-0K3dZwRNsG4zp2gmaH3WCToqXE2sag', latitude: 33.764953, longitude: -84.388648, category: 3 },

  { name: 'Der Biergarten', description: 'German menu and of course a selection of some of Germanys best brews.', address: '3300 Marietta St NW Atlanta, GA 30313', phone: '(404)521-2728', web_address: 'http://derbiergarten.com/', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvG0ZKGHV3ev9sY0eeup2IvPqWMzAf2U9nb39kkGj9VH_NH7FIIA', latitude: 33.761880, longitude: -84.396738, category: 3 },

  { name: 'Thrive', description: 'Culinary cuisine and fine drinks along with a mix of the Southern and seafood dishes.', address: '101 Marietta St NW Atlanta, GA 30313', phone: '(404)389-1000', web_address: 'http://thriveatl.com/online/', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR829Ga2MX03se4jwIrmPye3YOe_UvvujJ7__6sevMARWKRNAxL', latitude: 33.756937, longitude: -84.392024, category: 3 },

  { name: 'Dua Vietnamese Noodle Soup', description: 'Vietnamese noodle house for the favorite Pho soup bowls.', address: '53 Broad St NW Atlanta, GA 30303', phone: '(404)589-8889', web_address: 'http://www.yougotpho.com/', image_address: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQUVWJO3-NkHKyBPbCt5djwUVGxReOvxu4FcYbizeVnCJsbBIYE', latitude: 33.755451, longitude: -84.389352, category: 3 },
  
  { name: 'Atlanta Grill at the Ritz', description: 'A steakhouse in a club house setting, with stiff drinks and top notch culinary selections for the discriminating tastebuds.', address: '181 Peachtree St NE Atlanta,GA 30303', phone: '(404)659-0400', web_address: 'http://www.ritzcarlton.com/en/Properties/Atlanta/Dining/AtlantaGrill/Default.htm', image_address: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRycM1oKsuf9X0DS_LmHbCndcjI3hgXiZVpVENN0eSo_YSc94d3', latitude: 33.758545, longitude: -84.386960, category: 3 },
  
  { name: 'Sweet Georgias Juke Joint', description: 'Old time Southern foods mixed with an easy mix of live music.', address: '200 Peachtree st, suite #L05 Atlanta, GA 30303', phone: '(404)230-5853', web_address: 'http://www.sweetgeorgiasjukejoint.com/', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSOIx9vMryeQDXYGF_c0KpVSFSrfdnI20Mi8A-rOYjXPD7Teft', latitude: 33.759029, longitude: 33.759029, category: 3 },
  
  { name: 'Rise Sushi Lounge', description: 'Grade A sushi and Asian tapas.', address: '300 Marietta St Atlanta, GA 30313', phone: '(404)4770947', web_address: 'http://risesushilounge.com/', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTZg_Z6O4Ts2qjiU30Ut7QIHVeGP5nVHW9dv4txEqkh-aNfb2f8', latitude: 33.761880, longitude: -84.396738, category: 3 },
  
  { name: 'No Mas Cantina', description: 'Mexican cuisine serving up the best  that from Mexico.', address: '180 Walker St NW Atlanta, GA 30303', phone: '(404)574-5678', web_address: 'http://nomasatlanta.com/', image_address: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSKX252d6n-hTENqK8z3qTJL89JvxXEDywvClTOWeTX0pr_m1Yo', latitude: 33.749801, longitude: -84.400936, category: 3 },
  
  { name: 'Kwans Deli and Korean Kitchen', description: 'Korean fusioned Asian style menu served in the Centennial Park are for over 10 years.', address: '267 Marietta St NW Atlanta, GA 30313', phone: '4041234567', web_address: 'http://kwansdeli.com/', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQFReuVnPQjM6WBao1S3SkQ3_nNwRf08VppyiOAguoSBEHZDon6Yg', latitude: 33.760593, longitude: -84.395035, category: 3 },
  
  { name: 'Joystick Gamebar', description: 'A bar and rold-time-retro arcade game room combined to help release some stress and to enjoy the locals. ', address: '427 Edgewood Ave, Atlanta, GA 30312', phone: '(404)525-3002', web_address: 'http://www.joystickgamebar.com/', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa6sI_qQaAVmmREe3rHuI0UXa0p717Y1bswoaknMT8XA-YmSUbZQ', latitude: 33.754528, longitude: -84.372461, category: 3 },
  
  { name: 'Sock Fancy', description: 'Name says it all.', address: '171 Auburn Ave NE Atlanta,GA 30303', phone: '(706)510-7015', 
    web_address: 'wwww.sockfancy.com', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR2jIk4eQpwbBKHWdXy5wsu1zsqYWz3CpsoYE17SAi1fUKAgBHmow', latitude: 33.755319, longitude: -84.380592, category: 4 },
  
  { name: 'Walters', description: 'Mens sports shoes and clothing store.', address: '66 Decatur St SE Atlanta.GA 30303', phone: '4041234567', web_address: 'http://waltersclothing.com/', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSkFejRo1rDCJ0GVIbzkhURQvvYbdb1o83aArYvDVtAeY0ukdIL', latitude: 33.753332, longitude: -84.387663, category: 4 },
  
  { name: 'Eyesjets Lifestyle Eyewear', description: 'Fashion spectacles and opticians', address: '33.761889', phone: '(770)765-3359', web_address: 'https://www.facebook.com/eyejets', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcToY74rBTnzlFjkAkvARPUEK_BxeOs2JJtC4eKPnhmL5VvGfCi8iA', latitude: 33.761889, longitude: -84.389789, category: 4},

  { name: 'Army Surplus Sales', description: 'Luggage, and outdoor gear.', address: '342 Peachtree St NW Atlanta,GA 30308', phone: '(404)521-2227', web_address: 'http://www.armysurplusatlanta.com/', image_address: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbbpmO7k0mT7UHRqGAOnKZhW0IdPs8oVTGow4iSJTla0IbVdWt', latitude: 33.763889, longitude: -84.387721, category: 4},

  { name: 'Modern Tribe', description: 'Gifts and jewelry shop of Judaica origin.', address: '171 Auburn Ave NE Atlanta,GA 30303', phone: '(877)324-1818', web_address: 'http://moderntribe.com/blogs/news/14698605-moderntribe-atlanta-is-now-open', image_address: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQn8PHVRfSK1BnlkushkfxLJiP4eqnYFTAzR-Xs1cvRWFA0e2Er', latitude: 33.755319, longitude: -84.30592, category: 4},

  { name: 'Letter Box', description: 'A boutique teas, coffee and jewelry shop.', address: '134 Peachtree St NW Atlanta, GA 30303', phone: '(404)521-9063', 
    web_address: 'https://www.facebook.com/theletterboxgeneralstore', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS7he4f17vq5E7SBtqsgDzeftG9sJ2FRCTdZcsO0VgGqgn6SZoi', latitude: 33.757574, longitude: -84387738, category: 4},

  { name: 'Underground Atlanta', description: 'Atlantas shopping and entertainment district', address: '750 Central Ave SW Suite 007, Atlanta, GA 30303', phone: '(404)523-2311', web_address: 'www.underground-atlanta.com/', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuXiDiqkRdwHXK4mKJGy0DDXZmHoC572Z0NqmwPUrt5HvSRJ-zTg', latitude: 33.752867, longitude: -84388051, category: 4},

  { name: 'Context', description: 'Home decor and gallery store.', address: '75 John Wesley Dobbs Ave Atlanta, GA 30303', phone: '(404)477-3301', web_address: 'http://www.contextgallery.com/', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm_Pvf4pYFwuAweM7M-D42agKQ8JIGV0eaTBN1gJ3PnabVaVaQ', latitude: 33.756840, longitude: -84.385139, category: 4},

  { name: 'Friedmanss Shoes Inc', description: 'Offers Atlanta some of the best designer brand shoe at a reasonable price.', address: '223 Mitchell St Sw, Atlanta, GA 30303', phone: '(404)523-1134', 
    web_address: 'http://largefeet.com/', image_address: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTtxav6mAlb1y4Box6pu-JfJ_xPh37GaAS2rnjT7QoWBKiErLqN', latitude: 33.752347, longitude: --84.394850, category: 4},

  { name: 'Sweet Auburn Grocery', description: 'Your local neighborhood grocery storeSweet Auburn Grocery', address: '20 Auburn Ave NE, Atlanta, GA ', phone: '(404)343-1418', web_address: 'https://plus.google.com/115432696961856782505/about?hl=en', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSpCovEPYAfsKxTfw9Cq0bg6oH_tPjOPZWYwvn_IJPkr5BvK6473A', latitude: 33.755555, longitude: -84.381131, category: 4},

  { name: 'Yourvitaminlady Herb Shop', description: 'Vitamin Shop', address: '392 Auburn Ave NE Atlanta, GA 30312', phone: '4041234567', web_address: 'https://plus.google.com/116222572256759143393/about?gl=us&hl=en', image_address: 'http://s3-media3.fl.yelpcdn.com/bphoto/CiNBPjKhXrSgIsgf779qWg/348s.jpg', latitude: 33.755509, longitude: -84.374728, category: 4},

  { name: 'Criminal Records', description: 'An Atlanta music institution', address: '1154 Euclid Ave NE, Atlanta GA 30307', phone: '404.215.9511', web_address: 'http://criminalatl.com/about-us/store-info/', image_address: 'http://cdn.pastemagazine.com/www/system/images/photo_albums/record-store-day-2013/large/photo_2458_0.jpg?1384968217', latitude: 33.765158, longitude: -84.349775, category: 4},

  { name: 'The Byrd’s Box', description: 'Arty, local, handmade goods', address: '171 Auburn Ave NE, Atlanta, Georgia', phone: '4041234567', web_address: 'https://www.facebook.com/thebyrdsbox', image_address: 'http://s3-media1.fl.yelpcdn.com/bphoto/w9dedXdD28hawLAKLnS8Eg/l.jpg', latitude: 33.755319, longitude: -84.380592, category: 4},

  { name: 'Just Add Honey', description: 'Local tea shop', address: '171 AUBURN AVENUE . ATLANTA, GEORGIA 30303', phone: '(404) 791-0489', web_address: 'http://justaddhoney.net/', image_address: 'http://cdn.shopify.com/s/files/1/0066/4662/t/2/assets/logo.png?8621927464716114827', latitude: 33.755319, longitude: -84.380592, category: 4},

  { name: 'AmericasMart Atlanta', description: 'AmericasMart Atlanta is the nations only global wholesale marketplace housing the worlds single-largest collection of home, gift, area rug and apparel merchandise.', address: '240 Peachtree St NW, Atlanta, GA 30303', phone: '(404) 220-3000', 
    web_address: 'http://www.americasmart.com/', image_address: 'https://pbs.twimg.com/profile_images/393478191/AmMart_logo_vert_SM.jpg', latitude: 33.760711, longitude:-84.387768, category: 4},

  { name: 'The Mall at Peachtree Center', description: 'Peachtree Centers three-tiered retail mall is located in the heart of Atlanta at the corner of Peachtree Street and International Boulevard.', address: '231 Peachtree St NE, Atlanta, GA 30303', phone: '(404) 654-1296', 
    web_address: 'http://www.peachtreecenter.com/Mall-home.htm', image_address: 'http://media-cdn.tripadvisor.com/media/photo-s/05/30/2c/c2/the-mall-at-peachtree.jpg', latitude: 33.760422, longitude: -84.387547, category: 4},

  { name: 'Sweet Auburn Market', description: 'The Sweet Auburn Curb Market is a historic municipal market that houses a wide variety of food vendors, including restaurants and food stands.', address: '209 Edgewood Ave. SE Atlanta, GA 30303', phone: '(404) 659-1665', 
    web_address: 'http://www.sweetauburncurbmarket.com/', image_address: 'http://www.atlantapreservationcenter.com/event_images/Atlanta_Curb_Market_web.jpg', latitude: 33.754076, longitude: -84.379967, category: 4},

  { name: 'Polaris', description: 'Restaurant sits atop the Hyatt Regencys 25 stories. Menu offers Southern  fare and a sampling of great drinks in a retro atmosphere. ', address: '265 Peachtree St NE Atlanta, GA 30303', phone: '4041234567', 
    web_address: 'http://www.hyatt.com/corporate/restaurants/Polaris/en/Polaris.html?src=vanity_polarisatlanta.com', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0wKs64z0ztCZuh3ZbXhMr_fVGcRjj102z3JqnnKIgpLo3jthd', latitude: 33.761545, longitude: --84.387321, category: 3},

  { name: 'Sky Lounge', description: 'Sexy rooftop lounge atop Glenn Hotel, where the out-of-towners and after-work crowd gather into the night.', address: '110 Marietta St NW Atlanta,GA 30303', phone: '4041234567', 
    web_address: 'www.glennsskylounge.com', image_address: 'http://ww1.prweb.com/prfiles/2011/06/03/8528061/gI_74352_2009-23_15%202.jpg', latitude: 33.757068, longitude: -84.393050, category: 3},

  { name: 'Alma Cocina', description: 'Fresh Mexican food Kitchen. A modern and new approach to Mexican and Latin cuisine, all within steps for your taste buds to enjoy.', address: '191 Peachtree St NE Atlanta, Georgia 30303', phone: '(404)968-9662', 
    web_address: 'www.alma-atlanta.com', image_address: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTby4TqDGsx5stnQ6t3LWyBuH6jlxYh619ujgHMUt88xqKk8Eqn', latitude: 33.759038, longitude: -84.387259, category: 3},

  { name: 'Sister Luisas Church of the Living Room & Ping Pong Emporium', description: 'This restaurant sits atop the Westin Peachtree Plaza, revolving at 360° views. And the culinary food and drinks add well to the already magnificient views.', address: '466 Edgewood Avenue SE Atlanta, GA 30312', phone: '(404) 522-8275', 
    web_address: 'http://www.sisterlouisaschurch.com/', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQKLiPuVNjhy_9j4GEMXm8XQIT-8Kd8q8QPI7yTEgKx5EOgnLQY', latitude: 33.754477, longitude: -84.372373, category: 3},

  { name: 'Sundials Bar', description: 'This restaurant sits atop the Westin Peachtree Plaza, revolving at 360° views. And the culinary food and drinks add well to the already magnificient views.', address: 'Westin Peachtree Plaza, 210 Peachtree St NE Atlanta, GA 30303', phone: '(404)589-7506', web_address: 'http://www.sundialrestaurant.com/', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF2EvAc8iFzZPIeO0VqHpGTRDTl99oLgLL6JQEeCM_gvnfMUN3iA', latitude: 33.758964, longitude: -84.388281, category: 3},

  { name: 'Thelmas Kitchen', description: 'Local downtown Sweet Auburn bbq-rib shack thats finger licking good. A friendly and homey place to catch a bite.', address: '302 Auburn Ave Atlanta, GA 30303', phone: '(404)-688-5855', 
    web_address: 'wwww.abc.com', image_address: 'http://media-cdn.tripadvisor.com/media/photo-s/06/3e/72/4d/thelma-s-kitchen.jpg', latitude: 33.755698, longitude: -843777606, category: 3},

  { name: 'Original Jamaican Restaurant', description: 'Low key island-inspired food including jerk chicken and curry goat dishes.', address: '166 Trinity Ave Atlanta, GA 30303', phone: '(404) 525-8921', web_address: 'http://pattiestop.com/', image_address: 'http://s3-media3.fl.yelpcdn.com/bphoto/JjJlWf0L11NPK5gSL5N1yA/ls.jpg', latitude: 33.749361, longitude: -84.393545, category: 3},

  { name: 'Pizzeria Versuvius', description: 'Pizzeria for that old home comfort food by the slice or by the pie.', address: '327 Edgewood Ave SE, Atlanta, GA 30312', phone: '(404) 343-4404', 
    web_address: 'http://pizzeriavesuvius.com/', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT50BEWD6aA5h_CxX0_SgANIcLIGOOmfGvW22JY9f06CgIhw2xf', latitude: 33.754153, longitude: -84.376903, category: 3},

  { name: 'Harolds Chicken and Ice Bar', description: 'Great local chicken wings, burgers and beer bar and restaurant in the Edgewood neighborhood.', address: '349 Edgewood Ave, Atlanta, GA 30312', phone: '(404)577-0001', web_address: 'http://www.haroldschickenatl.com/', image_address: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSuni4mkltNJoQBW0A_ZVthgyqhsQ7F03mGLjUeSGOXWR6s1i2CZw', latitude: 33.754211, longitude: -84.376186, category: 3},

  { name: 'Supreme Fish Delight', description: 'Comfort food chain serving fish sandwiches & other casual American fare in a counter-serve space.', address: '362 Auburn Ave NE Atlanta, GA 30312', phone: '(404) 522-5333',web_address: 'supremefishdelight.com', image_address: 'https://s3.grouponcdn.com/images/site_images/1542/7427/IMAGE_Supreme-Fish-Delight.jpg', latitude: 33.755712, longitude: -84.375784, category: 3},

  { name: 'Grindhouse Killer Burgers', description: 'Creative quick-serve burgers including veggie patties plus fries, beer & liquored-up milkshakes.', address: '209 Edgewood Ave SE, Atlanta, GA 30303', phone: '(404) 522-3444', 
    web_address: 'grindhouseburgers.com', image_address: 'http://aht.seriouseats.com/images/20110607-154769-grindhouse-3box.jpg', latitude: 33.754076, longitude: -84.379967, category: 3},

  { name: 'The Sound Table', description: 'Small plates & cocktails served in an industrial space that morphs into a dance club at night.', address: '483 Edgewood Ave SE, Atlanta, GA 30312', phone: '404) 835-2534', web_address: 'urbanspoon.com', image_address: 'http://richmedina.com/wp-content/uploads/2014/10/sound-table-sign-sq-crop.jpg', latitude: 33.755715, longitude: -84.381781, category: 3},

  { name: 'Mangos Caribbean Restaurant', description: 'Cool, colorful eatery with paintings of Bob Marley & island life serves curry, jerk, oxtail & more.', address: '180 Auburn Ave NE, Atlanta, GA 30303', phone: '(404) 698-3992', 
    web_address: 'http://mangoscaribbeanrestaurant.com/', image_address: 'http://a4.urbancdn.com/w/s/b8/85tyBHaS8LB12A-640m.jpg', latitude: 33.755715, longitude: -84.381781, category: 3},

  { name: 'Serpas Restaurant', description: 'Former warehouse with a chic vibe serves Cajun-inspired American cuisine under soaring ceilings.', address: '659 Auburn Ave NE 501, Atlanta, GA 30312', phone: '(404) 688-0040', web_address: 'serpasrestaurant.com', image_address: 'http://images.atlanta.net/WebImage.ashx?docid=331274&imagetype=J&sortorder=20762', latitude: 33.756201, longitude: -84.366275, category: 3},

  { name: 'Rathbuns', description: 'This lively spot serves creative American plates in a stylish, renovated warehouse.', address: '112 Krog St NE, Atlanta, GA 30307', phone: '(404) 524-8280', web_address: 'kevinrathbun.com', image_address: 'http://bearingsguide.com/wp-content/uploads/2010/08/krsimage.jpg', latitude: 33.756172, longitude: -84.364782, category: 3},

  { name: 'Sweet Auburn BBQ', description: 'Sweet Auburn BBQ offers slow smoked BBQ.', address: '209 Edgewood Ave. SE Atlanta, GA 30303', phone: '(404) 589-9722', web_address: 'http://www.sweetauburnbbq.com/', image_address: 'http://s3.evcdn.com/images/edpborder500/I0-001/016/997/210-8.png_/atlanta-streets-alive-party-sweet-auburn-bbq-10.png', latitude: 33.754307, longitude: -84.379910, category: 3},

  { name: 'Sweet Auburn Bakery', description: 'Cakes, pies, muffins, cookies, tarts, brownies, chocolates and more. Your Neighborhood Bakery.', address: '789 Peachtree', phone: '4041234567', web_address: 'http://www.sweetauburnbakery.com/', image_address: 'https://pbs.twimg.com/profile_images/1366115293/lowres.jpg', latitude: 33.754307, longitude: -84.379910, category: 3},

  { name: 'Edgewood Corner Tavern', description: 'Dedicated to guide you to finding the best handcrafted beers the USA has to offer!', address: '464 Edgewood Ave SE Atlanta, GA 30312', phone: '(404) 577-2310', web_address: 'http://www.thecornertavern.com/edgewood/', image_address: 'http://aht.seriouseats.com/images/2012/09/20120911-222045-corner-tavern-carpetbagger-3box.jpg', latitude: 33.754528, longitude: -84.372461, category: 3},

  { name: 'Ruth Chris Steak House', description: 'Caring for our guests by delivering the highest quality food, beverage and service in a warm and inviting atmosphere.', address: '267 Marietta St. Atlanta, GA 30313', phone: '(404) 223-6500', 
    web_address: 'http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/ef/a6/efa65ed4ddccc95c1303cef3d9ebd0c1.jpg?itok=0yCggCxw', image_address: 'http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/ef/a6/efa65ed4ddccc95c1303cef3d9ebd0c1.jpg?itok=0yCggCxw', latitude: 33.760830, longitude: -84.394717, category: 3},

  { name: 'McCormick & Schmicks Seafood Restaurant', description: 'Combining an open imagination with a respect for tradition to make McCormick & Schmicks the nations premier family of seafood restauarants.', address: '190 Marietta S NW Atlanta, GA 30303', phone: '4041234567', 
    web_address: 'http://www.mccormickandschmicks.com/Locations/atlanta-georgia/atlanta-georgia/mariettastreetnw.aspx', image_address: 'http://s3-media1.fl.yelpcdn.com/bphoto/TR0NdnB_e10LNE_UBVEtEw/ls.jpg', latitude: 33.757644, longitude: -84.394645, category: 3},


  { name: 'Googie Burger', description: 'The only walk-up burger joint in Centennial Olympic Park; providing quick service from an exhibition kitchen.', address: '265 Park Ave W Atlanta, GA 30313', phone: '(404) 223-4664', web_address: 'http://googieburger.com/', image_address: 'http://clatl.com/binary/3ec2/1365172890-googie-burger-building.jpg', latitude: 33.761845, longitude: -84.394584, category: 3},


  { name: 'Glenns Kitchen', description: 'American comfort food with southern flair.', address: '110 Marietta St NW Atlanta, GA 30303', phone: '(404) 469-0700', web_address: 'http://www.glennskitchenatl.com/', image_address: 'https://c1.staticflickr.com/7/6116/6851217526_263e5a93f8.jpg', latitude: 33.757068, longitude: -84.393050, category: 3},

  { name: 'Ammazza Pizza', description: 'A truly special wood-fired pizza – a proud homage to Pizza Napoletana tradition, but of higher quality than anything created thus far.', address: '591-A Edgewood Ave SE Atlanta, GA 30312', phone: '(404) 228-1036', web_address: 'http://www.ammazza.com/', image_address: 'https://m1.behance.net/rendition/modules/142569325/disp/83eb4cd97c35a50a2a1fa1f447ba8816.jpg', latitude: 33.754070, longitude: -84.368063, category: 3},

  { name: 'Legal Sea Foods', description: 'See fish. Eat fish. If it isnt fresh, it isnt Legal.', address: '275 Baker St NW Atlanta, GA 30313', phone: '(678) 500-3700', web_address: 'http://www.legalseafoods.com/restaurants/atlanta-downtown', image_address: 'http://glutenfreedomatlanta.com/wp-content/uploads/2009/09/legal_sf1-300x216.jpg', latitude: 33.761913, longitude: -84.395569, category: 3},

  { name: 'Maxs Coal Oven Pizzeria', description: 'With the only genuine coal-burning oven in Georgia, Maxs serves crisp pizza that has been a hallmark of New York City pizzerias for more than a century.', address: '300 Marietta St NW Atlanta, GA 30313', phone: '(404) 974-2491', 
    web_address: 'http://www.maxsatl.com/', image_address: 'http://maxsatl.com/wp-content/uploads/2014/02/Round-2_3.jpg', latitude: 33.761880, longitude: -84.396738, category: 3},

  { name: 'Stats', description: 'STATS is the ultimate location to watch your favorite sporting event, host your next private event or enjoy a tasty meal with friends.', address: '300 Marietta St NW Atlanta, GA 30313', phone: '(404) 885-1472', web_address: 'http://www.statsatl.com/', image_address: 'http://media-cdn.tripadvisor.com/media/photo-s/06/0f/19/8e/stats-sports-bar.jpg', latitude: 33.761880, longitude: -84.396738, category: 3},

  { name: 'Nonis Bar & Deli', description: 'Specializing in fresh Italian comfort food.', address: '357 Edgewood Ave SE, Atlanta, GA 30312', phone: '(404) 343-1808', web_address: 'http://www.nonisdeli.com/', image_address: 'http://img1.southernliving.timeinc.net/sites/default/files/image/2011/11/souths-best-cheap-eats/nonis-bar-deli-l.jpg', latitude: 33.754201, longitude: -84.37595, category: 3},

  { name: 'Meehans Public House', description: 'Irish customs, neighborhood charm.', address: '200 Peachtree St NE Atlanta, GA 30303', phone: '(404) 214-9821', web_address: 'http://www.meehansdowntown.com/', image_address: 'http://amateurgastronomer.com/index/wp-content/uploads/2011/06/meehans-300x256.jpg', latitude: 33.759029, longitude: -84.387856, category: 3},

  { name: 'Selena S. Butler Park', description: 'Rich in African-American history and named for one of the founders of the National Parent-Teacher Association, Selena S. Butler Park is located just blocks from the Martin Luther King National Historical site.', address: '98 William Holmes Borders Dr SE Atlanta, GA 30312', phone: '(404) 546-6813', 
    web_address: 'http://www.atlantaga.gov/index.aspx?page=250', image_address: 'http://www.nrpa.org/uploadedImages/nrpaorg/About_NRPA/Initiatives/Parks_Build_Community/parks-build-community-ground-breaking-June-2010-4-seconds.gif', latitude: 33.752699, longitude: -84.375781, category: 2},

  { name: 'Atlanta Film Festival 365', description: 'The Atlanta Film Festival is one of the largest and longest-running festival in the country, welcoming an audience of over 25,000 to discover hundreds of new independent, international, animated, documentary, and short films, selected from 3000+ submissions from all over the world.', address: '1 Park Pl NE Atlanta, GA 30303', phone: '(404) 352-4225', 
    web_address: 'atlantafilmfestival.com', image_address: 'http://t0.gstatic.com/images?q=tbn:ANd9GcTlBL-Sfrk6SkhrwT4zAl_c_yjmpfsbZh51-j1Vu_rcPSsMxKCj3Q', latitude: 33.754366, longitude: -84.388789, category: 2},

  { name: 'SkyView Atlanta', description: 'Towering nearly 20 stories above Centennial Park, the SkyView Ferris wheel features 42 climate-controlled gondolas providing guest with breathtaking panoramic views of downtown Atlanta and the surrounding metropolitan area.', address: '168 Luckie St NW Atlanta, GA 30303', phone: '(678) 949-9023', 
    web_address: 'skyviewatlanta.com', image_address: 'http://media-cdn.tripadvisor.com/media/photo-s/05/9d/ff/79/skyview-atlanta.jpg', latitude: 33.758847, longitude: -84.391811, category: 2},

  { name: 'Agathas A Taste of Mystery', description: 'Audience members eat a 5-course American meal with wine while actors perform a murder-mystery drama.', address: '161 Peachtree Center Ave NE Atlanta, GA 30303', phone: '(404) 584-2255', 
    web_address: 'agathas.com', image_address: 'http://renaissance-hotels.marriott.com/uploads/attraction/thumb/ur1ayg7n.jpg', latitude: 33.759373, longitude: -84.385509, category: 2},

  { name: 'Pemberton Place', description: 'Named for Coca-Cola inventor John Pemberton, the 22-acre complex is home to the Georgia Aquarium, the World of Coca-Cola, and the planned National Center for Civil and Human Rights.', address: '121 Baker St NW Atlanta, GA 30313', phone: '(404) 676-5151', web_address: 'http://www.atlantadowntown.com/go/pemberton-place', image_address: 'http://tryps.rockefeller.edu/Images/flora%20logan%20pemberton%20place%20tryps2smaller.jpg', latitude: 33.762742, longitude: -84.392664, category: 2},

  { name: 'Georgia State Capitol', description: 'A National Historic Landmark listed on the National Register of Historic Places, the Georgia State Capitol is the main office building of Georgias government.', address: '206 Washington St SW Atlanta, GA 30334', phone: '(404) 656-2846', web_address: 'http://www.libs.uga.edu/capitolmuseum/', image_address: 'http://2.bp.blogspot.com/-gx1HVQm6-RU/ToMHKtH8CqI/AAAAAAAAAoA/NtICHlOBgMQ/s1600/ga+state+cap.jpg', latitude: 33.748994, longitude: -84.38805, category: 2},

  { name: 'Historic Ebenezer Baptist Church', description: 'The longtime spiritual home to many citizens of the Sweet Auburn community, Historic Ebenezer Baptist Church was the home church of Dr. Martin Luther King, Jr.', address: '407 Auburn Ave NE Atlanta, GA 30312', phone: '(404) 688-7300', web_address: 'http://www.nps.gov/malu/planyourvisit/ebenezer_baptist_church.htm', image_address: 'http://www.blackpast.org/files/Ebenezer_Baptist_Church__Atlanta.jpg', latitude: 33.754995, longitude: -84.374201, category: 2}, 

  { name: 'Philips Arena', description: 'The 20,000-seat sports and entertainment venue has welcomed more than 23 million patrons through its doors since opening in September 1999.', address: '1 Philips Drive Atlanta, GA 30303', phone: '(404) 878-3000', 
    web_address: 'http://www.philipsarena.com/', image_address: 'http://basketball.ballparks.com/NBA/AtlantaHawks/front.jpg', latitude: 33.757221, longitude: -84.396711, category: 2 },

  { name: 'Georgia Dome', description: 'Opened in 1992 as the largest cable-supported domed stadium in the world, the Georgia Dome is home to the Atlanta Falcons and host to major events year-round.', address: 'One Georgia Dome Dr. Atlanta, GA 30313', phone: '(404) 223-9200', 
    web_address: 'http://www.gadome.com/', image_address: 'http://images.nationalgeographic.com/wpf/media-live/photos/000/016/cache/atlanta-georgia-dome_1622_600x450.jpg', latitude: 33.757798, longitude: -84.401025, category: 2 },

  { name: 'Robert W. Woodruff Park', description: 'Named for philanthropist and former Coca-Cola President Robert W. Woodruff, the parks 6 acres include two fountains and a performance pavilion.', address: '91 Peachtree St NE, Atlanta, GA 30303', phone: '(404) 546-6813', 
    web_address: 'http://www.atlantaga.gov/index.aspx?page=250', image_address: 'https://irs1.4sqi.net/img/general/600x600/2790962__C7fEiy8vi6k86T_IQWk0TZ2HXDYzLEU2ps9GtVO5rg.jpg', latitude: 33.756023, longitude: -84.388615, category: 2},


  { name: 'Hurt Park', description: 'Named for Atlanta banker and real estate developer Joel Hurt, the downtown park opened in 1940.', address: '25 Courtland St. NE Atlanta, GA 30303', phone: '(404) 546-6813', web_address: 'http://www.atlantaga.gov/index.aspx?page=250', image_address: 'http://farm1.static.flickr.com/30/39624548_5e795c1b80.jpg?v=0', latitude: 33.755066, longitude: -84.384262, category: 2 },


  { name: 'Centennial Olympic Park', description: 'Centennial Olympic Park is a 21 acre public park located in downtown Atlanta, Georgia and built by the 1996 Atlanta Committee for the Olympic Games.', address: '265 Park Ave West N.W., Atlanta, Georgia 30313-1591', phone: '(404) 223-4412', web_address: 'http://www.centennialpark.com/', image_address: 'http://www.gcvb.org/includes/images/listings/CentennialOlympicParkAtlantaGeorgia_1280x960.jpg', latitude: 33.761845, longitude: -84.394584, category: 2 },

  { name: 'College Football Hall of Fame3', description: 'Newly opened in 2014 housing a single place for all college sports fans to come gather and see their team favorites downtown at the Luckie District.', address: '250 Marietta Street NW Atlanta, GA 30313', phone: '(404) 527-6949', 
    web_address: 'http://www.cfbhall.com/', image_address: 'http://sports.cbsimg.net/images/collegefootball/CFBHOF2.jpg', latitude: 33.757655, longitude: -84.393235, category: 2 },

  { name: 'MLK, Jr. National Historic Site', description: 'Visitors to King National Historic Site can tour the home of his birth, see where he played as a child, walk in his footsteps, and hear his voice in the church where he moved hearts and minds as he became an instrument for change.', address: '450 Auburn Ave NE Atlanta, GA 30312', phone: '(404) 331-5190', 
    web_address: 'http://www.nps.gov/malu/index.htm', image_address: 'http://www.planetware.com/photos-large/USGA/georgia-atlanta-martin-luther-king-jr-national-historic-site.jpg', latitude: 33.756299, longitude: -84.373459, category: 2 },

  { name: 'MLK, Jr. Birth Home', description: 'Visiting the home where Dr. King was born and lived the first twelve years of his life is the only guided tour at the King National Historic Site.', address: '501 Auburn Ave NE Atlanta, GA 30312', phone: '(404) 331-5190', 
    web_address: 'http://www.nps.gov/malu/planyourvisit/birth_home_tours.htm', image_address: 'https://s-media-cache-ak0.pinimg.com/originals/9b/fc/b7/9bfcb722ad900b6ee697aaa57d220360.jpg', latitude: 33.755151, longitude: -84.371149, category: 3 },

  { name: 'Historic Oakland Cemetery', description: 'No matter where you turn, history surrounds you at Oakland Cemetery. It is a shining example of the “rural garden” cemetery movement of the 19th century.', address: '248 Oakland Ave, SE Atlanta, GA 30312', phone: '4041234567', 
    web_address: 'http://www.oaklandcemetery.com/', image_address: 'http://www.maliasmiles.com/blog/wp-content/uploads/2014/10/Oakland-entrance.jpg', latitude: 33.747842, longitude: -84.375125, category: 2 },  

  { name: 'CNN Center', description: 'The CNN Center is the world headquarters of the Cable News Network, with the main newsrooms and studios for several of CNNs news channels located in the building.', address: '190 Marietta St NW Atlanta, GA 30303', phone: '(404) 827-2300', web_address: 'http://www.cnncenterretail.com/', image_address: 'http://images.nationalgeographic.com/wpf/media-live/photos/000/016/cache/atlanta-cnn-center_1617_600x450.jpg', latitude: 33.757644, longitude: -84.394645, category: 2 },

  { name: 'National Center for Civil and Human Rights', description: 'Opened in 2014, the National Center for Civil and Human Rights commemorates the historic struggle for African-American freedom and equality, and will serve as a space for ongoing dialogue, study, and contributions to the resolution of current and future freedom struggles of all people.', address: '55 Ivan Allen Jr. Blvd. Suite 510 Atlanta, GA 30308', phone: '(404) 991-6970', 
    web_address: 'http://www.cchrpartnership.org/index.html', image_address: 'http://www.aurn.com/images/webex/civilrights_061814.JPG', latitude: 33.764844, longitude: -84.389952, category: 2 },

  { name: 'Georgia Aquarium', description: 'Georgia Aquarium is the worlds largest with over 8 million gallons of water the top Atlanta attraction, right in the heart of downtown.', address: '225 Baker Street NW Atlanta, GA 30313', phone: '(404)581-4000', web_address: 'http://www.georgiaaquarium.org/', image_address: 'http://southernspaces.org/sites/southernspaces.org/files/images/2011/im-001-ss-11-swarre_lg.jpg', latitude: 33.762625, longitude: -84.394487, category: 2 },

  { name: 'APEX Museum', description: 'APEX is an acronym for African-American Panoramic Experience. This title embodies the mission of the APEX. It also provides its visitors with a complete view of African-American history.', address: '135 Auburn Ave Atlanta, Georgia 30303', phone: '(404) 523-APEX (2739)', web_address: 'http://www.apexmuseum.org', image_address: 'http://clatl.com/imager/b/magnum/10807659/57e5/APEX_Museum_Magnum.jpg', latitude: 33.75527, longitude: -84.383087, category: 1 },

  { name: 'Balzer Theater at Herren’s', description: 'Theatrical Outfit entertains, educates and enlivens with stories that stir the soul. Classic and contemporary theater in the heart of downtown Atlanta.', address: '84 Luckie St, Atlanta, GA 30303', phone: '(678) 528-1500', web_address: 'http://www.theatricaloutfit.org/', image_address: 'http://www.atlantadowntown.com/_files/images/theatrical-outfit.jpg', latitude: 33.757018, longitude: -84.389603, category: 1 },

  { name: 'The Tabernacle', description: 'Visit the Tabernacle for live entertainment and private events located at 52 Luckie Street, Atlanta.', address: '152 Luckie St NW Atlanta, GA 30303', phone: '(404) 659-9022', web_address: 'https://res.cloudinary.com/roadtrippers/image/upload/c_fill,h_316,w_520/v1381848509/the-tabernacle-51c89d257f3d77125f002119.jpg', image_address: 'https://res.cloudinary.com/roadtrippers/image/upload/c_fill,h_316,w_520/v1381848509/the-tabernacle-51c89d257f3d77125f002119.jpg', latitude: 33.758937, longitude: -84.39144, category: 1 },

  { name: 'Imagine IT! Children’ Museum of Atlanta', description: 'The Childrens museum located in Downtown, adjacent to Centennial Olympic Park.', address: '275 Centennial Olympic Park Dr Atlanta, GA 30303', phone: '(404) 659-5437', web_address: 'http://www.childrensmuseumatlanta.org/', image_address: 'http://www.ourlifememories.com/wp-content/uploads/2011/03/IMG_06232.jpg', latitude: 33.762467, longitude: -84.391694, category: 1 },

  { name: 'City Segway Tours of Atlanta', description: 'Our guided Segway Tours are simply the best way to experience Atlanta sightseeing.', address: '250 Park Ave West NW Unit 105 Atlanta, GA 30313', phone: '(404) 588-2274', 
    web_address: 'http://citysegwaytours.com/Atlanta', image_address: 'http://media-cdn.tripadvisor.com/media/photo-s/03/cf/7a/1a/city-segway-tours-atlanta.jpg', latitude: 33.761671, longitude: -84.395113, category: 1 },

  { name: 'Youth Art Connection Gallery', description: 'As a program of the Boys & Girls Clubs , Youth Art Connection (YAC) uses the arts as a means to connect with underserved children and teens in Atlanta, Georgia.', address: '63 Auburn Avenue NE Atlanta , Georgia 30303', phone: '(404) 614-6233', web_address: 'http://www.bgcma.org/club/yac', image_address: 'http://www.atlanta-airport.com/hjn/2012/12/Images/Employee%20art%20exhibit.jpg', latitude: 33.755244, longitude: -84.385474, category: 1 },

  { name: 'Civil Bikes', description: 'City cycle tours focusing on the civil rights movement', address: '151 Sampson St NE, Atlanta, GA 30312', phone: '404-323-8754', web_address: 'http://www.civilbikes.com/', image_address: 'http://s3-media1.fl.yelpcdn.com/bphoto/JqTLT-chrqtbyuoB-52gdw/ls.jpg', latitude: 33.758258, longitude: -84.365053, category: 1 },

  { name: 'Rialto Center for the Arts', description: 'The Rialto Center for the Arts is an 833-seat performing-arts venue owned and operated by Georgia State University and located in the heart of the Fairlie-Poplar district in downtown Atlanta, Georgia', address: '80 Forsyth St NW, Atlanta, GA 30303', phone: '(404) 413-9849', web_address: 'http://www.rialtocenter.org/', image_address: 'http://upload.wikimedia.org/wikipedia/commons/thumb/4/40/BestRialtoMarquee.jpg/300px-BestRialtoMarquee.jpg', latitude: 33.756745, longitude: -84.389428, category: 1 },

  { name: 'Sclc National Office', description: 'The organizational focus of the Southern Christian Leadership Conference is to promote spiritual principles within our membership and local communities; to educate youth and adults in the areas of personal responsibility, leadership potential, and community service; to ensure economic justice and civil rights in the areas of discrimination and affirmative action; and to eradicate environmental classism and racism wherever it exists.', address: '7320 Auburn Ave NE Atlanta, GA 30303', phone: '(404) 522-1420', 
    web_address: 'nationalsclc.org', image_address: 'http://www.blackpast.org/files/blackpast_images/SCLC_King.jpg', latitude: 33.755668, longitude: -84.37722, category: 1 },

  { name: 'The Music Room', description: 'Music venue under Pizzeria Vesuvius. Tha caters to live music and dj near the Old Forth Ward area.', address: '327 Edgewood Ave, Atlanta, GA 30312', phone: '(404)341-0111', 
    web_address: 'https://www.facebook.com/TheMusicRoomATL?rf=151557841531776', image_address: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSOkozkDzZ5rbRjqgWtl5rzQspkg_Rs9QSM2VptpqhUTYHGtGKU', latitude: 33.754153, longitude: -84.376903, category: 1 },

  { name: 'Over Da Edge', description: 'One-room dance venue,  with food and outside patio and people watching', address: '483 Edgewood Ave Atlanta, GA 30312', phone: '(404)681-3343', web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 33.754093, longitude: -84.371793, category: 1 },

  { name: 'National Black Arts Festival', description: 'restaurant', address: '730 Peachtree St NE #500, Atlanta, GA 30308', phone: '(404)730-7315', web_address: 'wwww.nbaf.org', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaaQVyfb3IqOdLjEX2-0sOUu2tGbJca7eLM7TT5PZxnEtAlP7lcw', latitude: 33.774439, longitude: -84.385370, category: 1 },

  { name: 'Eyedrum', description: 'art gallery', address: '88 Forsyth Street Dr Atlanta,GA 30303', phone: '(404)522-0655', 
      web_address: 'http://www.eyedrum.org/', image_address: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpl-gFuUSmWy2rhn0xaY06QJhSqi9hGrn7Y8msrGJeg4AQtVdHBQ', latitude: 33.751881, longitude: --84.391455, category: 1 },
  ])



 # itineraries = Itinerary.create([
 #    { name: 'My Super Cool Itinerary', date: 20191213, user_id: 1 },
 #    { name: 'My Sweet Itinerary', date: 20151213, user_id: 1 },
 #    { name: 'Sunday', date: 20150101, user_id: 2 }
 #    ])
