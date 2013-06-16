# == Schema Information
#
# Table name: user_sessions
#
#  id           				:integer					not null,  primary key, auto_increment
#  session_id  					:string
#  data       					:text
#  created_at 					:datetime         not null
#  updated_at 					:datetime         not null
class UserSession < Authlogic::Session::Base
  
end
