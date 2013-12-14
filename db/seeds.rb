# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Token.destroy_all

def create_token(f)
  seed = rand.to_s[-10..-1]
  Token.create name: "#{f}#{seed}"[0..9]
end

#create_token 'sikko'
#create_token 'aput'
#create_token 'pukak'
#create_token 'mauja'
#create_token 'massak'
#create_token 'sikursuit'
#create_token 'sikuak'
#create_token 'sikuaq'
#create_token 'sikurluk'
#create_token 'sikuliaq'
#create_token 'iluliq'
#create_token 'nilak'
#create_token 'issinirit'
#create_token 'sirmiq'
#create_token 'sullarniq'
#create_token 'kaniq'
#create_token 'iluq'
#create_token 'kanirnartuq'
#create_token 'nataqqurnat'
#create_token 'aput'
#create_token 'qaniit'
#create_token 'nittaalaq'
#create_token 'nittaalaaqqat'
#create_token 'qanipalaat'
#create_token 'apirlaat'
#create_token 'qannirsuq'
#create_token 'nittaatsuq'
#create_token 'pirsuq'
#create_token 'iluitsuq'
#create_token 'pirsirsursuaq'
#create_token 'apusiniq'
#create_token 'puttaaq'
#create_token 'maniillat'
#create_token 'ingunirit'
#create_token 'kassuq'
#create_token 'qaannuq'
#create_token 'kusugaq'
#create_token 'imarnirsaq'
#create_token 'ammaniq'
#create_token 'quppaq'
#create_token 'qinuq'
#create_token 'imalik'
#create_token 'aakkarniq'
#create_token 'aputitaq'
#create_token 'putsinniq'
#create_token 'puvvinniq'
#create_token 'manirak'
#create_token 'tuaq'
#create_token 'nutarniq'
#create_token 'naggutit'
#create_token 'mangiggal'
#create_token 'mangikaajaaq'
#create_token 'masaaraq'
#create_token 'siirsinniq'
#create_token 'tiggunnirit'
#create_token 'nunataq'
#create_token 'uukkarnit'
#create_token 'sinaaq'



Project.destroy_all

Project.create name: 'Project name #1', description: 'some hacking stuff'
Project.create name: 'Project name #2', description: 'some hacking stuff'
Project.create name: 'Project name #3', description: 'some hacking stuff'
Project.create name: 'Project name #4', description: 'some hacking stuff'
