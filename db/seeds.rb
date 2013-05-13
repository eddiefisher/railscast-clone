# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.create(email: 'admin@example.com', password: 'password')

# Episode.create([
#   {
#     name: '#1 Caching with Instance Variables',
#     permalink: '1-caching-with-instance-variables',
#     description: 'Learn a quick way to improve performance. Just store the end result of an expensive command in an instance variable!',
#     tag_list: 'Performance, Caching'
#   }, {
#     name: '#2 Dynamic find_by Methods',
#     permalink: '2-dynamic-find-by-methods',
#     description: 'Shorten simple finds considerably and improve readability by using the dynamic find_all_by and find_by methods.',
#     tag_list: 'Active Record'
#   }, {
#     name: '#3 Find Through Association',
#     permalink: '3-find-through-association',
#     description: 'No need to pass foreign keys in find conditions, just do the find through a has_many association.',
#     tag_list: 'Active Record'
#   }, {
#     name: '#4 Move Find into Model',
#     permalink: '4-move-find-into-model',
#     description: 'Move a find into the model to clean up the controllers and remove duplication. Also see how you can call these custom find methods through an association.',
#     tag_list: 'Active Record'
#   }, {
#     name: '#5 Using with_scope',
#     permalink: '5-using-with-scope',
#     description: 'Learn how to use with_scope - a very powerful method which will allow your custom find methods to accept any find options. Just like magic!',
#     tag_list: 'Active Record'
#   }, {
#     name: '#6 Shortcut Blocks with Symbol to_proc',
#     permalink: '6-shortcut-blocks-with-symbol-to-proc',
#     description: 'It may have a goofy syntax, but the Symbol#to_proc feature Rails adds allows you to do simple blocks very quickly and easily.',
#     tag_list: 'Active Support'
#   }, {
#     name: '#7 All About Layouts',
#     permalink: '7-all-about-layouts',
#     description: 'Everything you wanted to know about layouts: global layouts, controller layouts, shared layouts, dynamic layouts and action layouts. Yes, there really are that many ways to specify a layout.',
#     tag_list: 'Views'
#   }, {
#     name: '#8 Layouts and content_for',
#     permalink: '8-layouts-and-content-for',
#     description: 'If you want to change something in the layout on a per-template basis, content_for is your answer! This allows templates to specify view code that can be placed anywhere in a layout.',
#     tag_list: 'Views'
#   }
# ])