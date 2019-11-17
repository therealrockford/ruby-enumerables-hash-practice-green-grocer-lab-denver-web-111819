# def find_item_by_name_in_collection(name, collection)
#   counter = 0 
#   while counter < collection.length 
#     if collection[counter][:item] == name 
#       return collection[counter]
#     end
#     counter += 1 
#   end 
# end

# def consolidate_cart(cart)
#   new_cart = []
#   counter = 0 
#   while counter < cart.length 
#     new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
#     if new_cart_item != nil 
#       new_cart_item[:count] += 1 
#     else
#       new_cart_item = {
#         :item => cart[counter][:item],
#         :price => cart[counter][:price],
#         :clearance => cart[counter][:clearance],
#         :count => 1 
#       }
#       new_cart << new_cart_item
#     end
#     counter += 1 
#   end
#   new_cart
# end

def consolidate_cart(cart)
  final_hash = {}
  cart.each do |element_hash|
    element_name = element_hash.keys[0]
    if final_hash.has_key?(element_name)
      final_hash[element_name][:count] += 1 
    else 
      final_hash[element_name] = {
        count: 1,
        price: element_hash[element_name][:price],
        clearance: element_hash[element_name][:clearance]
      }
    end
  end
  final_hash
end

def apply_coupons(cart, coupons)
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

