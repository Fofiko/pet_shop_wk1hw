def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  total_cash = pet_shop[:admin][:total_cash]
  return total_cash
end


def add_or_remove_cash(pet_shop,cash)
  pet_shop[:admin][:total_cash] += cash
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop,more_sales)
  pet_shop[:admin][:pets_sold] += more_sales
end


def stock_count(pet_shop)
  return pet_shop[:pets].count
end


def pets_by_breed(pet_shop, breed)
  pets_same_breed = []
  pets = pet_shop[:pets]
  for pet in pets
    one_breed = pet[:breed]
    if one_breed == breed
      pets_same_breed << pet
    end
  end
  return pets_same_breed
end

# QUESTION - how to get nil without explicitly including it in the def here
def find_pet_by_name(pet_shop, pet_name)
  pets = pet_shop[:pets]
  for pet in pets
    return pet if pet[:name] == pet_name
  end
  return nil
end


def remove_pet_by_name(pet_shop, pet_name)
  pets = pet_shop[:pets]
  for pet in pets
    pets.delete(pet) if pet[:name] == pet_name
  end
end


def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets] << new_pet
end

# QUESTION - why doesn't the long version customer[customer_number][:cash] pass
def customer_cash(customer)
    return customer[:cash]
end


def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end


def customer_pet_count(customer)
  return customer[:pets].length
end

# QUESTION - why wouldn't accept shovel (worked in add_pet_to_stock)
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
  return customer[:pets].length
end


#  # # OPTIONAL
# QUESTION - do we abso have to declare the false?
def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

#
# def sell_pet_to_customer(pet_shop, pet_name, customer)
#     pets = pet_shop[:pets]
#     for pet in pets
#       if pet[:name] == pet_name
#         customer[:pets].push(pet)
#       end
#     end
#   #
#   # customer_pet_count = customer[:pets].length
#   # pets_sold = pet_shop[:admin][:pets_sold]
#   # customer_cash = customer[:cash]
#   # total_cash = pet_shop[:admin][:total_cash]
# end
