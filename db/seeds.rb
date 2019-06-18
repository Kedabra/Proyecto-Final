# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do |i|
#     Product.create(name: Faker::Commerce.product_name,
#                    price: Faker::Commerce.price.to_i,
#                    description: Faker::Quote.famous_last_words,
#                    photo:"https://picsum.photos/id/#{i}/200/300")
# end

# 10.times do |i|
#     Information.create(title: Faker::Commerce.product_name,
#                    description: Faker::Quote.famous_last_words,)
#
#
# end
#
# 20.times do |i|
#   start_at = Random.rand(10).days.ago + 5.days
#   Tested.create!(title: Faker::Name.name, start: start_at)
# end
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
#
# AdminUser.create!(email: 'omarelias1997@gmail.com', password: 'omar3349735', password_confirmation: 'omar3349735')

Product.create(name: 'Test de Marquis',
   price: 15000,

   description: 'Nuestro producto estrella, el test de marquis sirve para una gran cantidad de sustancias.

   Su principal objetivo son las drogas de síntesis, como el MDMA (pastis, pills, pilas, x, extasis).

   Recuerda que un test solo informa la presencia de una sustancia, no dice nada acerca de la pureza, ni de otras sustancias que pueden no reaccionar con el test.

   Un test positivo no quiere decir que la sustancia sea segura para consumir, ninguna droga es 100% segura. Sin embargo, un test negativo puede salvar tu vida.

   Todos nuestros tests vienen en gotarios de 10 ml, que alcanza para unos 100 tests. Duran hasta un año si se mantienen en un lugar frío y oscuro, como el refrigerador.

   Por el momento estamos haciendo envíos a regiones por pagar vía starken, si eres de santiago entregamos en el metro bellas artes, a coordinar, también hacemos envíos en santiago a pedido.',
    photo:'marquis.png')


    Product.create(name: 'Test de Ehrlich',
       price: 15000,

       description: 'El test de halucinógenos por excelencia, el test de Ehrlich solo da un resutlado, si no da morado; no lo consumas!

Este test sirve para toda la familia de halucinógenos (LSD, DMT, Psilocibina, etc...) y descarta drogas tales como el NBOME o el 2CB.

Recuerda que un test solo informa la presencia de una sustancia, no dice nada acerca de la pureza, ni de otras sustancias que pueden no reaccionar con el test.

Un test positivo no quiere decir que la sustancia sea segura para consumir, ninguna droga es 100% segura. Sin embargo, un test negativo puede salvar tu vida.

Todos nuestros tests vienen en gotarios de 10 ml, que alcanza para unos 100 tests. Duran hasta un año si se mantienen en un lugar frío y oscuro, como el refrigerador.

Por el momento estamos haciendo envíos a regiones por pagar vía starken, si eres de santiago entregamos en el metro bellas artes, a coordinar, también hacemos envíos en santiago a pedido.',
        photo:'ehrlich.png')


        Product.create(name: 'Test de Liebermann',
           price: 15000,

           description: 'El complemento perfecto para el Marquis

El test de Liebermann sirve para una amplia variedad de sustancias, sin embargo, es un test secundario. Lo que significa que para que su resultado tenga validez, debe ser complementado con el resultado del test de marquis.

Junto con el marquis, pueden diferenciar la cocaína de las anfetaminas, y pueden distinguir el PMMA, componente altamente peligroso que se encuentra algunas veces en las pastillas de éxtasis.

Recuerda que un test solo informa la presencia de una sustancia, no dice nada acerca de la pureza, ni de otras sustancias que pueden no reaccionar con el test.

Un test positivo no quiere decir que la sustancia sea segura para consumir, ninguna droga es 100% segura. Sin embargo, un test negativo puede salvar tu vida.

Todos nuestros tests vienen en gotarios de 10 ml, que alcanza para unos 100 tests. Duran hasta un año si se mantienen en un lugar frío y oscuro, como el refrigerador.

Por el momento estamos haciendo envíos a regiones por pagar vía starken, si eres de santiago entregamos en el metro bellas artes, a coordinar, también hacemos envíos en santiago a pedido.',
            photo:'liebermann.png')

            Product.create(name: 'Marquis + Liebermann',
               price: 25000,

               description: '',
                photo:'marqlieb.png')

                Product.create(name: 'Marquis + Ehrlich',
                   price: 25000,

                   description: '',
                    photo:'marqehr3x3.png')

                    Product.create(name: 'Tripack',
                       price: 35000,

                       description: '',
                        photo:'tri.png')
