namespace :dbtst do
  unless Rails.env.production?
    Faker::Config.locale = :'pt-BR'

    desc 'Seeding a db w/ test data for Contacts'
    task seed_contacts: :environment do
      start = Time.now
      puts '~> Contacts: Seeding ...'

      100.times do |i|
        Contact.create!({
          name: Faker::Name.name,
          email: Faker::Internet.email,
          kind: Kind.all.sample,
          rmk: Faker::Lorem.paragraph([1,2,3,4,5].sample)
        }) do |contact|
          puts '   - create_contact:(%s|%s|%s)' % [contact.name, contact.email, contact.kind.description]
        end
      end

      puts '~> Contacts: Seeded (%.4fs).' % [Time.now - start], ''
    end

    desc 'Seeding a db w/ test data for Addresses'
    task seed_addresses: :environment do
      start = Time.now
      puts '~> Addresses: Seeding ...'

      Contact.all.each do |contact|
        Address.create!({
            street: Faker::Address.street_address,
            city: Faker::Address.city,
            state: Faker::Address.state_abbr,
            contact: contact
        }) do |address|
          puts '   - create_address:(%s|%s|%s)' % [address.street, address.city, address.state]
        end
      end

      puts '~> Addresses: Seeded (%.4fs).' % [Time.now - start], ''
    end

    desc 'Seeding a db w/ test data for Phones'
    task seed_phones: :environment do
      start = Time.now
      puts '~> Phones: Seeding ...'

      Contact.all.each do |contact|
          Random.rand(1..5).times do |i|
            Phone.create!({
              phone: Faker::PhoneNumber.phone_number,
              contact: contact
            }) do |phone|
              puts '   - create_phone:(%s)' % [phone.phone]
            end
          end
      end

      puts '~> Phones: Seeded (%.4fs).' % [Time.now - start], ''
    end

    desc 'Seeding a db w/ all test data'
    task all: [:seed_contacts, :seed_addresses, :seed_phones]
  end
end
