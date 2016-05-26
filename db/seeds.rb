# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



  Project.create([{ title: '專案一' }, { title: '專案二' }, { title: '專案三' }])

  Task.create([
    { project_id: 1, content: '代辦事項1', is_done: false },
    { project_id: 1, content: '代辦事項2', is_done: false },
    { project_id: 2, content: '代辦事項3', is_done: false },
    { project_id: 2, content: '代辦事項4', is_done: false },
    { project_id: 2, content: '代辦事項5', is_done: true },
    { project_id: 3, content: '代辦事項6', is_done: false },
    { project_id: 3, content: '代辦事項7', is_done: false },
    { project_id: 3, content: '代辦事項8', is_done: false },
    { project_id: 3, content: '代辦事項9', is_done: true },


  ])
