module SportDB::Models

class Region < ActiveRecord::Base

  belongs_to :country, :class_name => 'Country', :foreign_key => 'country_id'

  has_many :cities, :class_name => 'City', :foreign_key => 'region_id'

  ## todo: add has_many :teams throuh :cities
  ## has_many :teams, :class_name => 'Team', :foreign_key => 'city_id'


  def self.create_from_ary!( regions, more_values={} )
    regions.each do |values|
            
      ## key & title & country required
      attr = {
        key:   values[0],
        title: values[1]
      }

      attr = attr.merge( more_values )
      
      ## check for optional values
      values[2..-1].each do |value|
        if value.is_a? Country
          attr[ :country_id ] = value.id
        else
          # issue warning: unknown type for value
        end
      end
      
      Region.create!( attr )
    end # each region
  end

end # class Region


end # module Models::SportDB