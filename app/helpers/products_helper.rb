module ProductsHelper
  def parse_zinc_policy_price(policy)
    policy["quick_quotes"].first["price"] if policy && policy["quick_quotes"]
  end

  def parse_zinc_policy_desc(policy)
    policy["quick_quotes"].first["description"] if policy && policy["quick_quotes"]
  end
end
