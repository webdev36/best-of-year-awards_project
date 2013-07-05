# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts ">>>>>>>>>>> Create categories"
pd = Category.find_or_create_by_name(:name=>"Product", :description=>"Start a Product", :kind=>0, :sort_id=>0)
puts "create product categories"

Category.find_or_create_by_name(:name=>"Accessories", :description=>"Accessories", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Accessories: Office", :description=>"Accessories: Office", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Accessories: Outdoor", :description=>"Accessories: Outdoor", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Bath: Accessories and Hardware", :description=>"Bath: Accessories and Hardware", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Bath: Cabinetry", :description=>"Bath: Cabinetry", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Bath: Fittings(faucets etc.)", :description=>"Bath: Fittings(faucets etc.)", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Bath: fixtures(sinks, tubs etc.)", :description=>"Bath: fixtures(sinks, tubs etc.)", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Architectural Products", :description=>"Architectural Products", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Flooring: Carpet/Broadloom", :description=>"Flooring: Carpet/Broadloom", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Flooring: Carpet/Modular", :description=>"Flooring: Carpet/Modular", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Flooring: Carpet/Rugs", :description=>"Flooring: Carpet/Rugs", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Flooring: Hard", :description=>"Flooring: Hard", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Flooring: Healthcare", :description=>"Flooring: Healthcare", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Flooring: Hospitality", :description=>"Flooring: Hospitality", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Flooring: Tile and Stone", :description=>"Flooring: Tile and Stone", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Constract/Case Goods", :description=>"Furniture: Constract/Case Goods", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Contract/Desking", :description=>"Furniture: Contract/Desking", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Contract/Systems", :description=>"Furniture: Contract/Systems", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Contract/Tables", :description=>"Furniture: Contract/Tables", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Education", :description=>"Furniture: Education", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Healthcare/Furniture and Seating", :description=>"Furniture: Healthcare/Furniture and Seating", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Outdorr/Lounge", :description=>"Furniture: Outdorr/Lounge", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Outdoor/Seating & Tables", :description=>"Furniture: Outdoor/Seating & Tables", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Partitions and Wall System", :description=>"Furniture: Partitions and Wall System", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Residential/Storage", :description=>"Furniture: Residential/Storage", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Residential/Dining Tables", :description=>"Furniture: Residential/Dining Tables", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Residential/Occasional Tables", :description=>"Furniture: Residential/Occasional Tables", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Furniture: Youth", :description=>"Furniture: Youth", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Green Innovation", :description=>"Green Innovation", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Hardware", :description=>"Hardware", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Kitchen: Appliances", :description=>"Kitchen: Appliances", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Kitchen: Cabinetry", :description=>"Kitchen: Cabinetry", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Kitchen: Fittings", :description=>"Kitchen: Fittings", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Kitchen: Fixtures", :description=>"Kitchen: Fixtures", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Lighting: Chandelier(multiple bulb)", :description=>"Lighting: Chandelier(multiple bulb)", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Lighting: Architectural", :description=>"Lighting: Architectural", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Lighting: Pendant(single bulb)", :description=>"Lighting: Pendant(single bulb)", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Lighting: Floor and Sconce", :description=>"Lighting: Floor and Sconce", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Lighting: Table", :description=>"Lighting: Table", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Materials and Surfaces(including paneling)", :description=>"Materials and Surfaces(including paneling)", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Seating: Contract/Conference", :description=>"Seating: Contract/Conference", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Seating: Contract/Guest", :description=>"Seating: Contract/Guest", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Seating: Contract/Lounge", :description=>"Seating: Contract/Lounge", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Seating: Contract/Task", :description=>"Seating: Contract/Task", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Seating: Residential/Accent", :description=>"Seating: Residential/Accent", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Seating: Residential/Lounge", :description=>"Seating: Residential/Lounge", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Seating: Residential/Sofa", :description=>"Seating: Residential/Sofa", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Technology", :description=>"Technology", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Textiles: Contract", :description=>"Textiles: Contract", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Textiles: Healthcare", :description=>"Textiles: Healthcare", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Textiles: Hospitality", :description=>"Textiles: Hospitality", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Textiles: Outdoor", :description=>"Textiles: Outdoor", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Textiles: Residential", :description=>"Textiles: Residential", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Wallcovering: Contract", :description=>"Wallcovering: Contract", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Wallcovering: Fabric", :description=>"Wallcovering: Fabric", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Wallcovering: Treatments(including Tile and Stone)", :description=>"Wallcovering: Treatments(including Tile and Stone)", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Wallcovering: Paper", :description=>"Wallcovering: Paper", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Window Treatments", :description=>"Window Treatments", :parent_id=>pd.id, :kind=>0, :sort_id=>1)

pj = Category.find_or_create_by_name(:name=>"Project", :description=>"Project Type", :kind=>1, :sort_id=>1)
puts "create project categories"
Category.find_or_create_by_name(:name=>"Beauty/Spa/Fitness", :description=>"Beauty/Spa/Fitness",                                :parent_id=>pj.id, :kind=>1, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Budget", :description=>"Budget",                                                        :parent_id=>pj.id, :kind=>1, :sort_id=>2)
Category.find_or_create_by_name(:name=>"Eco", :description=>"Eco",                                                              :parent_id=>pj.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Education", :description=>"Education",                                                  :parent_id=>pj.id, :kind=>1, :sort_id=>4)
Category.find_or_create_by_name(:name=>"Exhibit/Installation", :description=>"Exhibit/Installation",                            :parent_id=>pj.id, :kind=>1, :sort_id=>5)
Category.find_or_create_by_name(:name=>"Healthcare", :description=>"Healthcare",                                                :parent_id=>pj.id, :kind=>1, :sort_id=>6)
Category.find_or_create_by_name(:name=>"Hospitality: Hotel", :description=>"Hospitality: Hotel", :parent_id=>pj.id, :kind=>1, :sort_id=>7)
Category.find_or_create_by_name(:name=>"Hospitality: Restaurant, Lounge, Bar", :description=>"Hospitality: Restaurant, Lounge, Bar", :parent_id=>pj.id, :kind=>1, :sort_id=>8)
Category.find_or_create_by_name(:name=>"Institutional(cultural, government, religious)", :description=>"Institutional(cultural, government, religious)", :parent_id=>pj.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Kitchen & Bath", :description=>"Kitchen & Bath", :parent_id=>pj.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Office: Large /> 50,000 SQ FT", :description=>"Office: Large /> 50,000 SQ FT", :parent_id=>pj.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Office: Mid-Size / 10-50,000 SQ FT", :description=>"Office: Mid-Size / 10-50,000 SQ FT", :parent_id=>pj.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Office: small /< 10,000 SQ FT", :description=>"Office: small /< 10,000 SQ FT", :parent_id=>pj.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Public Spaces / Outdoor", :description=>"Public Spaces / Outdoor", :parent_id=>pj.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Residence: Apartment/Loft/Multi-Unit Dwelling", :description=>"Residence: Apartment/Loft/Multi-Unit Dwelling", :parent_id=>pj.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Residence: House/Townhouse", :description=>"Residence: House/Townhouse", :parent_id=>pj.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Retail", :description=>"Retail", :parent_id=>pj.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Showroom", :description=>"Showroom", :parent_id=>pj.id, :kind=>1, :sort_id=>3)

Option.find_or_create_by_option_name(:option_name=>"project_submission_agree_terms", :option_value=>"
        <p>Submit your project in the Best of Year 2013 competition.</p>
        <p>First some fine print(please read):</p>
        <p>- Work must have been completed between September 2012 and August 2013.</p>
        <p>- Due to the comprehensive nature of this competition, we will accept work that has been published previously and/or was part of another competition</p>
        <p>- There is no limit to the number of projects that may be entered to the competition.</p>
        <p>- Fees: $300/entry AND per category.(e.g. one project entered into two categories is $300 x 2 = $600)</p>
        <p>Please note: Submission may be reassigned to a different project category at the editor's discretion.</p>
        <p>Questions? ontact us at boyawards@interiordesign.net</p>")
Option.find_or_create_by_option_name(:option_name=>"product_submission_agree_terms", :option_value=>"
        <p>Submit your project in the Best of Year 2013 competition.</p>
        <p>First some fine print(please read):</p>
        <p>- Work must have been completed between September 2012 and August 2013.</p>
        <p>- Due to the comprehensive nature of this competition, we will accept work that has been published previously and/or was part of another competition</p>
        <p>- There is no limit to the number of projects that may be entered to the competition.</p>
        <p>- Fees: $300/entry AND per category.(e.g. one project entered into two categories is $300 x 2 = $600)</p>
        <p>Please note: Submission may be reassigned to a different project category at the editor's discretion.</p>
        <p>Questions? ontact us at boyawards@interiordesign.net</p>")

Option.find_or_create_by_option_name(:option_name=>"twitter_link_url", :option_value=>"https://twitter.com")
Option.find_or_create_by_option_name(:option_name=>"facebook_link_url", :option_value=>"http://www.facebook.com")
Option.find_or_create_by_option_name(:option_name=>"linkedin_link_url", :option_value=>"http://www.linkedin.com")
Option.find_or_create_by_option_name(:option_name=>"tumblur_link_url", :option_value=>"http://www.tumblr.com")
Option.find_or_create_by_option_name(:option_name=>"newsleter_link_url", :option_value=>"http://newsleter.com")
