# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
School.destroy_all
Review.destroy_all
Category.destroy_all
# Students
s1 = Student.create(first_name: "Chris", last_name: "Potter", age: 23, username: "potter@gmail.com", password: "asdjfaasdfas234")
s2 = Student.create(first_name: "Tony", last_name: "Scrotter", age: 43, username: "scrotter@gmail.com", password: "24223sdfasd")
s3 = Student.create(first_name: "Thao", last_name: "Dotter", age: 12, username: "dotter@gmail.com", password: "asdfas452342")
s4 = Student.create(first_name: "Adam", last_name: "Lotter", age: 34, username: "lotter@gmail.com", password: "345kj23kl4j2")
s5 = Student.create(first_name: "Joyce", last_name: "Protter", age: 45, username: "protter@gmail.com", password: "lkwj4kl5j3")
s6 = Student.create(first_name: "Isaac", last_name: "Motter", age: 12, username: "motter@gmail.com", password: "2lk3j4234")
s7 = Student.create(first_name: "Evans", last_name: "Water", age: 15, username: "water@gmail.com", password: "kl34j56klwj")
s8 = Student.create(first_name: "Dick", last_name: "Daughter", age: 19, username: "daughter@gmail.com", password: "lk4j5kl23j4")

# Schools
u1 = School.create(name: "Princeton University", location: "Princeton, NJ", size: "6343", university: true, img_url: "https://www.vantagetcg.com/wp-content/uploads/2018/07/Princeton-University-Blair-Arch-from-Princeton-University-Website-1920x1082.jpg")
u2 = School.create(name: "Harvard University", location: "Cambridge, MA", size: "5453", university: true, img_url: "https://cdn.cnn.com/cnnnext/dam/assets/151007071814-harvard-campus-stock-super-tease.jpg")
u3 = School.create(name: "Cornell University", location: "Ithaca, NY", size: "11234", university: true, img_url: "https://www.johnson.cornell.edu/businessfeed/wp-content/uploads/2018/03/cornell-university-featured.jpg")
u4 = School.create(name: "Dartmouth College", location: "Hanover, NH", size: "4567", university: true, img_url: "https://news.dartmouth.edu/sites/dart_news.prod/files/styles/slide/public/news/images/20170926_campus_aerials_eb_069_810.jpg")
u5 = School.create(name: "Brown University", location: "Providence, RI", size: "2345", university: true, img_url: "https://cdn-images-1.medium.com/max/1188/0*0jHn48Tp5wC_FqUc.jpg")
u6 = School.create(name: "Columbia University", location: "New York, NY", size: "7635", university: true, img_url: "https://cdn.cnn.com/cnnnext/dam/assets/161115114714-columbia-university-nyc-file-large-169.jpg")
u7 = School.create(name: "Yale University", location: "New Haven, CT", size: "4562", university: true, img_url: "https://news.yale.edu/sites/default/files/styles/featured_media/public/2010_05_10_19_03_37_central_campus_1.jpg?itok=dFqc-hAD&c=07307e7d6a991172b9f808eb83b18804")

# Reviews
# r1 = Review.create(student: s1, school: u1, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 5)
# r2 = Review.create(student: s2, school: u2, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 2)
# r3 = Review.create(student: s3, school: u4, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 1)
# r4 = Review.create(student: s4, school: u5, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 3)
# r5 = Review.create(student: s1, school: u6, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 4)
# r6 = Review.create(student: s5, school: u7, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 3)
# r7 = Review.create(student: s7, school: u5, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 3)
# r8 = Review.create(student: s8, school: u4, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 4)
# r9 = Review.create(student: s1, school: u4, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 2)
# r10 = Review.create(student: s6, school: u3, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 4)
# r11 = Review.create(student: s2, school: u1, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", rating: 5)

#Categories
c1 = Category.create(name: "Professors")
c2 = Category.create(name: "Majors")
c3 = Category.create(name: "Classes")
c4 = Category.create(name: "Food")
c5 = Category.create(name: "Social Life")
c6 = Category.create(name: "Athletics")
c7 = Category.create(name: "Dorm Life")
c8 = Category.create(name: "Campus")

# # SchoolCategories
# sc1 = SchoolCategory.create(school_id: 1, category_id: 1)
