module UserDataHelper
	def bmi
      return ( @user_datum.weight/((@user_datum.bodysize/100)*
		(@user_datum.bodysize/100) )).round(2)
	end	
end
