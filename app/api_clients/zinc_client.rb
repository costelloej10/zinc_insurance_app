class ZincClient
  class ZincClientError < Exception; end
  include ApiClient

  def get_quick_quotes(product)
    return "This product doesnt have any Zinc remote info saved" unless product.zinc_remote_info
    payload = product.zinc_remote_info.quick_qoute_sku_hash
    post_json(path: "/api/quick_quotes", payload: payload, expected_code: 200)
  end

  def get_categories
    get_json path: "/api/categories"
  end
  #{"Jewelry"=>["Bracelet", "Necklace", "Pendant", "Brooch", "Engagement Ring", "Wedding Ring", "Other Ring", "Earrings", "Other"], "Bicycle"=>["Bicycle", "Other"], "Electronics"=>["Laptop", "Camera", "Cellphone", "Tablet", "Printer", "Monitor", "TV", "Other"], "Musical"=>["Guitar", "Mandolin", "Piano", "Brass", "Cello", "Keyboard", "Percussion", "Accordion", "Viola", "Violin", "String Bass", "Lever Harp", "Woodwinds", "Other"], "Sample"=>["Sample"]}
  def host
    ZINC[:host]
  end

  def email
    ZINC[:email]
  end

  def auth_token
    ZINC[:auth_token]
  end

  def http_headers
    {
      "X-User-Email" => email,
      "X-User-Token" => auth_token,
      "Content-Type" => "application/json"
    }
  end

end