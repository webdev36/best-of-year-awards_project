# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts ">>>>>>>>>>> Create categories"
pj = Category.find_or_create_by_name(:name=>"Product", :description=>"Start a Product", :kind=>0, :sort_id=>0)
pd = Category.find_or_create_by_name(:name=>"Project", :description=>"Start a Project", :kind=>1, :sort_id=>1)

puts "create project categories"
Category.find_or_create_by_name(:name=>"Project1", :description=>"Start a Project", :parent_id=>pj.id, :kind=>0, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Project2", :description=>"Start a Project", :parent_id=>pj.id, :kind=>0, :sort_id=>2)
Category.find_or_create_by_name(:name=>"Project3", :description=>"Start a Project", :parent_id=>pj.id, :kind=>0, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Project4", :description=>"Start a Project", :parent_id=>pj.id, :kind=>0, :sort_id=>4)
Category.find_or_create_by_name(:name=>"Project5", :description=>"Start a Project", :parent_id=>pj.id, :kind=>0, :sort_id=>5)
Category.find_or_create_by_name(:name=>"Project6", :description=>"Start a Project", :parent_id=>pj.id, :kind=>0, :sort_id=>6)
Category.find_or_create_by_name(:name=>"Project7", :description=>"Start a Project", :parent_id=>pj.id, :kind=>0, :sort_id=>7)
Category.find_or_create_by_name(:name=>"Project8", :description=>"Start a Project", :parent_id=>pj.id, :kind=>0, :sort_id=>8)


puts "create product categories"
Category.find_or_create_by_name(:name=>"Product1", :description=>"Start a Product", :parent_id=>pd.id, :kind=>1, :sort_id=>1)
Category.find_or_create_by_name(:name=>"Product2", :description=>"Start a Product", :parent_id=>pd.id, :kind=>1, :sort_id=>2)
Category.find_or_create_by_name(:name=>"Product3", :description=>"Start a Product", :parent_id=>pd.id, :kind=>1, :sort_id=>3)
Category.find_or_create_by_name(:name=>"Product4", :description=>"Start a Product", :parent_id=>pd.id, :kind=>1, :sort_id=>4)
Category.find_or_create_by_name(:name=>"Product5", :description=>"Start a Product", :parent_id=>pd.id, :kind=>1, :sort_id=>5)
Category.find_or_create_by_name(:name=>"Product6", :description=>"Start a Product", :parent_id=>pd.id, :kind=>1, :sort_id=>6)
Category.find_or_create_by_name(:name=>"Product7", :description=>"Start a Product", :parent_id=>pd.id, :kind=>1, :sort_id=>7)
Category.find_or_create_by_name(:name=>"Product8", :description=>"Start a Product", :parent_id=>pd.id, :kind=>1, :sort_id=>8)

Option.find_or_create_by_option_name(:option_name=>"project_submission_agree_terms", :option_value=>"<p>Project Deadline: October 1</p>
        <p>Submit your project in the Best of Year 2013 competition.</p>
        <p>First some fine print(please read):</p>
        <p>- Work must have been completed between September 2012 and Augsut 2013.</p>
        <p>- Due to the comprehensive nature of this competition, we will accept work that has been published previously and/or was part of another competition</p>
        <p>- There is no limit to the number of projects that may be entered to the competition.</p>
        <p>- Fees: $300/entry AND per category.(e.g. one project entered into two categories is $300 x 2 = $600)</p>
        <p>Please note: Submission may be reassigned to a different project category at the editor's discretion.</p>
        <p>Questions? ontact us at boyawards@interiordesign.net</p>")