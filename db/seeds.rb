# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

class Seed 

  def self.begin
    seed = Seed.new 
    seed.generate_jackets 
    seed.generate_tokens
    seed.generate_dummy_user  

  end

  def generate_dummy_user 
    user1 = User.create!({:email => "admin@admin.com", :password => "adminadmin", :password_confirmation => "adminadmin"})
    puts " "
    puts "Dummy account successfuly created, username: #{user1.email}, password: #{user1.password}."
  end

  def generate_tokens 
    if Doorkeeper::Application.count.zero?
      Doorkeeper::Application.create(name: "Admin", redirect_uri: "", scopes: "")
      Doorkeeper::Application.create(name: "User1", redirect_uri: "", scopes: "")
      Doorkeeper::Application.create(name: "User2", redirect_uri: "", scopes: "")
    end
  end

  #Doorkeeper::Application.find_by(name: "Admin").uid
  #Doorkeeper::Application.find_by(name: "Admin").secret

  def generate_jackets 
    50.times do |i|

      jacket_factories = [
        "Shenzhen Wanhao Mfg. Co., Ltd.",
        "Guangdong Textiles Imp. & Exp. Co., Ltd.",
        "Zhuhai Nazhou Buliao Cheng",
        "Lida Textile (Zhuhai) Ltd.",
        "Guangzhou Quande Co., Ltd."
      ]
      
      jacket_brands = [
        "Gocci",
        "Louis Button",
        "Moncat",
        "Ballengciaga",
        "Hemes",
        "Noke",
        "Cumin Projects",
        "Adidadas",
        "Superb",
        "Wanhao",
        "Shenzhenfuzhuangwang",
        "Gocci x Adidadas",
        "Canadein Goose"
      ]
      
      jacket_categories = ["bomber",
      "trench",
      "puffer"
      ]
      
      jacket = Jacket.create!(
        jacket_brand: (jacket_brands).sample,
        jacket_manufacturer: (jacket_factories).sample,
        jacket_category: (jacket_categories).sample
      )
      puts "Jacket #{i}: Manufacturer is #{jacket.jacket_manufacturer}, jacket brand is #{jacket.jacket_brand}, and 
      category is '#{jacket.jacket_category}'"
    end
  end

end

Seed.begin