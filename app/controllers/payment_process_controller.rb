class PaymentProcessController < ApplicationController
	before_filter :require_user

	include Wicked::Wizard
	steps :select_submission, :input_card_info, :confirm

	def show
		@order = current_order unless current_order.nil?
		@submissions = Submission.whole_submissions
		case step
		when :select_submission
			@order = current_user.orders.build if current_order.nil?
			@order.order_submissions.build
			@order.save			
			session[:order_id] = @order.id
		when :input_card_info	
			@order ||= current_order
			@order.build_payment if @order.payment.nil?
		end
		render_wizard
	end

	def update
		@order ||= current_order		
		case step
		when :select_submission
			@order.attributes = params[:order]
		when :input_card_info
			render :text => params[:order][:shipping_first_name].inspect and return
#			@order.attributes = params[:order]

			credit_card = ActiveMerchant::Billing::CreditCard.new(
				:number								=>params[:card_number],
				:verification_value		=>params[:ccv_number],
				:month								=>params[:exp_month],
				:year									=>params[:exp_year],
				:first_name						=>params[:order][:shipping_first_name],
				:last_name						=>params[:order][:shipping_last_name]
			)


			if credit_card.valid?
				gateway = ActiveMerchant::Billing::AuthorizeNetGateway.new(
					:login => ENV['AUTHORIZE_LOGIN_ID'],
					:password => ENV['AUTHORIZE_TRANSACTION_KEY'],
					:test=>true
				)

				response = gateway.authorize()
			else

			end
		when :confirm
			
		end	
		
		render_wizard @order
	end
	private
		def redirect_to_finish_wizard
			redirect_to root_url, notice: "Tanks you for create submission"
		end
end
