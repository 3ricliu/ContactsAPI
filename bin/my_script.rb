require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/5.json'
#   query_values: {
#     'some_category[a_key]' => 'another value',
#     'some_category[a_second_key]' => 'yet another value',
#     'some_category[inner_inner_hash][key]' => 'value',
#     'something_else' => 'aaahhhhh'
#
# ).to_s
#
# puts RestClient.get(url)
#
# puts RestClient.post(url)

# def create_user
#   url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users.json'
#   ).to_s
#   puts RestClient.post(
#   url,
#   { user: { name: "Teddy", email: "cat@gmail.com" } }
# )
# end

# begin
  # create_user
# rescue :unprocessable_entity
#   puts "can't create!"
# end

# def update_user
#   url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users/4'
#   ).to_s
#   puts RestClient.put(
#   url,
#   { user: {username: 'Sarah' } }
# )
# end
#

# def delete_user
#   url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users/2'
#   ).to_s
#   puts RestClient.delete(
#   url
#   # { user: {name: "Ben", email: "cat@gmail.com" } }
# )
# end
#
# delete_user


# def update_contact
#   url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/contacts/2'
#   ).to_s
#   puts RestClient.put(
#   url,
#   { contact: {name: 'Sarah', email: "sarah@appacademy.com", user_id: 2586 } }
# )
# end
#
# update_contact



def destory_contact_share
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contact_shares/1'
  ).to_s
  puts RestClient.delete(
  url
)
end

destory_contact_share
