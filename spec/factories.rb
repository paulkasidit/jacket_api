FactoryBot.define do 
  factory(:jacket) do 
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

    jacket_brand {(jacket_brands).sample}
    jacket_manufacturer {(jacket_factories).sample}
    jacket_category {(jacket_categories).sample}

  end
end
