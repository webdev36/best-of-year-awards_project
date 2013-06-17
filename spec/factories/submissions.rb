
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :submission do
  	user_id {User.first.nil? ? FactoryGirl.create(:user).id : User.first.id}
    title "MyString"
    description "MyText"
    status "uncomplete"
    active false

    after(:create) do |submission|
    	submission.build_project_spec market_segments: "market segments string here", 
    																lead_designer: "lead_designer string here",
    																architect: "architect string here",
		  															additional_designers: "additional_designers string here",
		  															other_resources: "other_resources string here",
		  															othere_resources_title: "othere_resources_title string here",
		  															square_footage: "square_footage string here"
    																
    	submission.build_company name: "name string here",
															  address1: "address1 string here",
															  address2: "address2 string here",
															  city: "city string here",
															  state: "state string here",	
															  zip: "zip code here",
															  country: "country string here",
															  phone: "phone number here",
															  website: "website url here"
		  													
    end
  end

end
