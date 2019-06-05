# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

venues = Venue.create([
  {
    name: 'Crossfit elefante atlético',
    description: 'Salvaje y majestuoso',
    phone: '6145454'
  },
  {
    name: 'Yoga la nutria serena',
    description: 'Tranquilo, desde la rama de un árbol.',
    phone: '4526545'
  },
  {
    name: 'El mapache feliz',
    description: 'Centro de escalada animal.',
    phone: '2124705'
  },
  {
    name: 'La jirafa flexible',
    description: 'Pilates a tu medida.',
    phone: '2124705'
  },
])

venues.each.with_index(1) do |venue, index|
  venue.image.attach(
    io: File.open("app/assets/images/#{index}.jpg"),
    filename: "#{index}.jpg",
    content_type: 'image/jpeg'
  )
end

Category.create(name: "Crossfit")
Category.create(name: "Yoga")
Category.create(name: "Escalada")
Category.create(name: "Pilates")

Activity.create(name: 'Clase de crossfit',
                description: 'Ven a entrenar',
                schedule: 'Lunes a viernes De 8:00am a 5:00pm',
                venue: Venue.first,
                difficulty: 0,
                category_ids: [1])

Activity.create(name: 'Entrada libre',
                description: 'Ven a entrenar',
                schedule: 'Todos los díasa las 5:00pm',
                venue: Venue.first,
                difficulty: 2,
                category_ids: [1, 2, 3, 4])

Activity.create(name: 'Kundalin yoga',
                description: 'Cuerpo y mente sana',
                schedule: 'De 8:00am a 5:00pm',
                venue: Venue.second,
                difficulty: 1,
                category_ids: [2])

Activity.create(name: 'Yoga meditación',
                description: 'Paz mental',
                schedule: 'De 8:00am a 10:00m y de 2:00pm a 5pm',
                venue: Venue.second,
                difficulty: 2,
                category_ids: [2])

Activity.create(name: 'Clase de escalada',
                description: 'Aprende las bases',
                schedule: 'De 8:00am a 5:00pm',
                venue: Venue.third,
                difficulty: 0,
                category_ids: [3])

Activity.create(name: 'Entrada libre',
                description: 'Una hora de acceso a todos los salones',
                schedule: 'De 8:00am a 5:00pm',
                venue: Venue.third,
                difficulty: 1,
                category_ids: [1, 2, 3, 4])

Activity.create(name: 'Pilates reformer',
                description: 'Estírate',
                schedule: 'De 8:00am a 5:00pm',
                venue: Venue.fourth,
                difficulty: 2,
                category_ids: [4])

Activity.create(name: 'Pilates re-reformer',
                description: 'Restírate',
                schedule: 'De 8:00am a 5:00pm',
                venue: Venue.fourth,
                difficulty: 1,
                category_ids: [4])
