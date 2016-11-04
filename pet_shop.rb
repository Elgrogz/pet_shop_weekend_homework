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

def find_pet_by_name(shop, name)
  for pet in shop[:pets]
    return pet if name == pet[:name]
  end
end