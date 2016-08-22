class OrderItemController < ApplicationController
    def create
        OrderItem.create()
    end
    
    #private 
    #def orderitem_params
     #  params.require(:orderitem).permit(:item_id)
    #end
end
