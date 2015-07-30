if User.count == 0
  puts 'Creating users...'

  User.create(email: "le.anh.vu@inte.co.jp", password: "12345678", first_name: "Vu", last_name: "Le", company_id: "1")
  User.create(email: "nguyen.van.canh@inte.co.jp", password: "12345678", first_name: "Canh", last_name: "Nguyen", company_id: "1")
  User.create(email: "nguyen.phuong.hai@inte.co.jp", password: "12345678", first_name: "Hai", last_name: "Nguyen", company_id: "1")
  User.create(email: "le.thi.hoa.huong@inte.co.jp", password: "12345678", first_name: "Huong", last_name: "Le", company_id: "1")
  User.create(email: "nguyen.ngoc.quy@inte.co.jp", password: "12345678", first_name: "Quy", last_name: "Nguyen", company_id: "1")

end
