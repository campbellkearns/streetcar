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
  { name: 'World of Coke', description: 'Coke museum', address: '123 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 1 },
  { name: 'GA Aquarium', description: 'big-ass aquarium', address: '234 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 1 },
  { name: 'Rathbuns', description: 'Steak House', address: '345 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 2 },
  { name: 'Sweet Auburn', description: 'Restaurant', address: '456 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 2 },
  { name: 'Maxs Clothes', description: 'clothier', address: '789 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 3 },
  { name: 'Cool Restaurant', description: 'restaurant', address: '789 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 4 },
  { name: 'Some Store', description: 'store', address: '789 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 3 },
  { name: 'Target', description: 'store', address: '789 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 1 },
  { name: 'Ninas Cool Digs', description: 'clothier', address: '789 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 3 },
  { name: 'Lisas Eats', description: 'restaurant', address: '789 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 4 },
  { name: 'Beths Art Store', description: 'art store', address: '789 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 3 },
  { name: 'Franks Burger', description: 'clothier', address: '789 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 4 },
  { name: 'Alans Hotdogs', description: 'restaurant', address: '789 Peachtree', phone: '4041234567', 
    web_address: 'wwww.abc.com', image_address: 'wwww.123.com', latitude: 102.2345, longitude: -123.4576, category: 3 }
  ])


 # itineraries = Itinerary.create([
 #    { name: 'My Super Cool Itinerary', date: 20191213, user_id: 1 },
 #    { name: 'My Sweet Itinerary', date: 20151213, user_id: 1 },
 #    { name: 'Sunday', date: 20150101, user_id: 2 }
 #    ])
