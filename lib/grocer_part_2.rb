require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.each do |coupon|
    coupon.each do |attribute, value|
      name = coupon[:item]
      if find_item_by_name_in_collection(name, cart) && find_item_by_name_in_collection(name, cart)[:count] >= coupon[:num] 
        index2 = 0 
        while index2 < cart.length 
        if cart[index2][:item] == "#{name} W/COUPON"
          cart[index2][:count] += 1 
        end 
          index2 += 1
        end 
        else cart << {:item => "#{name} W/COUPON", :price => coupon[:cost] / coupon[:num], :clearance => cart[index][:clearance],
          :count => 1} 
        
end
find_item_by_name_in_collection(name, cart)[:count] -= coupon[:num] 
        
end
end 
end 

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
