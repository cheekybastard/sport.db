module SportDB::Models

class City < ActiveRecord::Base
  self.table_name = 'cities'

  belongs_to :country, :class_name => 'Country', :foreign_key => 'country_id'
  belongs_to :region,  :class_name => 'Region',  :foreign_key => 'country_id'

  has_many :teams, :class_name => 'Team', :foreign_key => 'city_id'

  
  def self.create_from_ary!( cities, more_values={} )
    cities.each do |values|
      
      ## key & title & country required
      attr = {
        key: values[0]
      }
      
      ## title (split of optional synonyms)
      # e.g. FC Bayern Muenchen|Bayern Muenchen|Bayern
      titles = values[1].split('|')
      
      attr[ :title ]    =  titles[0]
      ## add optional synonyms
      attr[ :synonyms ] =  titles[1..-1].join('|')  if titles.size > 1
      
      attr = attr.merge( more_values )
      
      ## check for optional values
      values[2..-1].each do |value|
        if value.is_a? Country
          attr[ :country_id ] = value.id
        elsif value =~ /^region:/   ## region:
          value_region_key = value[7..-1]  ## cut off region: prefix
          value_region = Region.find_by_key!( value_region_key )
          attr[ :region_id ] = value_region.id
        else
          # issue warning: unknown type for value
        end
      end
      
      City.create!( attr )
    end # each city
  end

end # class Cities


end # module Models::SportDB