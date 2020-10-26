require 'json'
require 'irb'

module SlovakiaPostcodes
  def self.call
    names = File.read('./municipalities_sk.json')
    names = JSON.parse(names)

    locations = File.read('./postalcodecoordinates_sk.json')
    locations = JSON.parse(locations)

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


    ## If you need to debug run
    #
    #    binding.irb

    File.write('./joined_postalcodes_sk.json', JSON.pretty_generate(locations))
  end
end
