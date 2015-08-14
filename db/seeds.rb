# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Team.delete_all
Team.create(name: 'ЗСЭМ',
  info: 
    %{<p>
        Отличная команда. А может быть еще лучше.
      </p>},
  image_url:   'cs.jpg')
# . . .
Team.create(name: 'Жилищная инициатива',
  info:
    %{<p>
        Неоднократный победитель первенства.
      </p>},
  image_url: 'ruby.jpg')
# . . .

Team.create(name: 'БЮИ',
  info: 
    %{<p>
        После некоторого перерыва команда вновь вернулась
         в высшую лигу первенства города.
      </p>},
  image_url: 'rtp.jpg')