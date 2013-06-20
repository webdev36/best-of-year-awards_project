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
Category.find_or_create_by_name(:name=>"Product1", :description=>"Start a Product", :parent_id=>pd.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Budget", :description=>"Start a Product", :parent_id=>pd.id, :kind=>0, :sort_id=>2)
Category.find_or_create_by_name(:name=>"Product3", :description=>"Start a Product", :parent_id=>pd.id, :kind=>0, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Product4", :description=>"Start a Product", :parent_id=>pd.id, :kind=>0, :sort_id=>4)
Category.find_or_create_by_name(:name=>"Product5", :description=>"Start a Product", :parent_id=>pd.id, :kind=>0, :sort_id=>5)
Category.find_or_create_by_name(:name=>"Product6", :description=>"Start a Product", :parent_id=>pd.id, :kind=>0, :sort_id=>6)
Category.find_or_create_by_name(:name=>"Product7", :description=>"Start a Product", :parent_id=>pd.id, :kind=>0, :sort_id=>7)
Category.find_or_create_by_name(:name=>"Product8", :description=>"Start a Product", :parent_id=>pd.id, :kind=>0, :sort_id=>8)


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



Option.find_or_create_by_option_name(:option_name=>"project_submission_agree_terms", :option_value=>"<p>Project Deadline: October 1</p>
        <p>Submit your project in the Best of Year 2013 competition.</p>
        <p>First some fine print(please read):</p>
        <p>- Work must have been completed between September 2012 and Augsut 2013.</p>
        <p>- Due to the comprehensive nature of this competition, we will accept work that has been published previously and/or was part of another competition</p>
        <p>- There is no limit to the number of projects that may be entered to the competition.</p>
        <p>- Fees: $300/entry AND per category.(e.g. one project entered into two categories is $300 x 2 = $600)</p>
        <p>Please note: Submission may be reassigned to a different project category at the editor's discretion.</p>
        <p>Questions? ontact us at boyawards@interiordesign.net</p>")
Option.find_or_create_by_option_name(:option_name=>"product_submission_agree_terms", :option_value=>"<p>Product Deadline: October 1</p>
        <p>Submit your project in the Best of Year 2013 competition.</p>
        <p>First some fine print(please read):</p>
        <p>- Work must have been completed between September 2012 and Augsut 2013.</p>
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
