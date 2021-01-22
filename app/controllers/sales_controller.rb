class SalesController < InheritedResources::Base

  private

    def sale_params
      params.require(:sale).permit(:name, :new_client, :client_on, :new_money, :sales_rep, :product, :source, :opening_amount, :first_year_comp, :renewal_comp, :user)
    end

end
