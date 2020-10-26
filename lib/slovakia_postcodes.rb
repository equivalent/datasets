require 'json'
require 'irb'

module SlovakiaPostcodes
  def self.call
    names = File.read('./municipalities_sk.json')
    names = JSON.parse(names)

    locations = File.read('./postalcodecoordinates_sk.json')
    locations = JSON.parse(locations)

    ## If you need to debug run
    #
    #    binding.irb

    names.each do |town_name, data|
      data["postalCodes"].each do |postcode|

        if locations[postcode]
          locations[postcode]['town'] ||= {}
          locations[postcode]['town']['name'] ||= town_name
        else
          puts("Postcode #{postcode} not found in 'locations' in town: '#{town_name}'")
        end
      end
    end

    File.write('./generated.json', JSON.pretty_generate(locations))
    puts "Ok file 'generated.json' generated successfully"
    puts "\n\n"
    puts "Now I'm running check if there are any postcodes without town.name:"

    no_problem = true
    locations.each do |postcode, data|
      if data['town'].nil? || data['town']['name'].nil?
        no_problem = false
        puts "Postcode #{postcode} has no town.name!"
      end
    end

    puts "All Ok! No postcodes without town.name " if no_problem
  end
end
