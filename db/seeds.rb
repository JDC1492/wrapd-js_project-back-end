# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.create(title: "Jonathan's List")
    ListItem.create(item_name: "G-Shock Smart Watch",
        item_price: 399.99,
        item_link: "https://www.gshock.com/watches/digital/gbdh1000-1a4",
        list_id:1)
    ListItem.create(item_name: "Playstation V",
        item_price: 499.99,
        item_link: "https://www.playstation.com/en-us/ps5/",
        list_id:1)
    ListItem.create(item_name: "Nintendo E-Store Gift Card",
        item_price: 25.00,
        item_obtained: true,
        list_id:1)

List.create(title: "Carlton's List")
    ListItem.create(item_name: "Nintendo Switch",
        item_price: 299.99,
        list_id:2)
    ListItem.create(item_name: "Nintendo E-Store Gift Card",
        item_price: 25.00,
        item_obtained: true,
        list_id:2)
    ListItem.create(item_name: "Switch Pro Controller",
        item_price: "69.99",
        item_link: "https://www.target.com/p/nintendo-switch-pro-controller/-/A-52180631?ref=tgt_adv_XS000000&AFID=google_pla_df&fndsrc=tgtao&DFA=71700000012807845&CPNG=PLA_Electronics%2BShopping_Local&adgroup=SC_Electronics&LID=700000001170770pgs&LNM=PRODUCT_GROUP&network=g&device=c&location=9010525&targetid=pla-474525309966&ds_rl=1246978&ds_rl=1248099&gclid=CjwKCAiAn7L-BRBbEiwAl9UtkJlns2dQ95VKiUlCYOW6qIxj47jAwbOM8e_6iMZupFOaoUbxP0vcDhoC2dIQAvD_BwE&gclsrc=aw.ds",
        list_id:2)

List.create(title: "Ashley's List")
    ListItem.create(item_name: "TJ-Maxx Gift Card",
        item_price: 150.00,
        item_obtained: true, 
        list_id:3)
    ListItem.create(item_name: "iPhone 12 Pro Max",
        item_price: 1099.99,
        item_link: "https://www.apple.com/shop/buy-iphone/iphone-12-pro",
        list_id:3)
    ListItem.create(item_name: "Old Navy Gift Card",
        item_price: 150.00,
        item_obtained: true,
        list_id:3)