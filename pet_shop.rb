require('pry-byebug')

def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  return shop[:admin][:pets_sold] += amount
end  

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed)
  breed_count = []
  for pet in shop[:pets]
    breed_count << pet if pet[:breed] == breed
  end  
    return breed_count
end

def find_pet_by_name(shop, pet_name)
  match = nil
    for pet in shop[:pets]
      match = pet if pet[:name] == pet_name
    end
  return match
end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    pet = nil if name == pet[:name]
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

def customer_pet_count(customer)
  pet_count = 0
    for pet in customer[:pets]
    pet_count += 1
    end
  return pet_count
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(shop, pet, customer)
  unless pet == nil

    if customer_can_afford_pet(customer, pet) == true

      add_pet_to_customer(customer, pet)
      customer[:cash] -= pet[:price]
      shop[:admin][:total_cash] += pet[:price]
      shop[:admin][:pets_sold] += 1
    end
  end
end
