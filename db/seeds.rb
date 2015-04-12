# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




guest = User.create(email: "guest@example.com", password: "example")

tasks = Task.create([
                    {description: 'Brush my teeth', task_type: 'morning routine'},
                    {description: 'Get dressed' , task_type: 'morning routine'},
                    {description: 'Wash my face' , task_type: 'morning routine'},
                    {description: 'Brush my hair' , task_type: 'morning routine'},
                    {description: 'Gather lunch and bookbag' , task_type: 'morning routine'},
                    {description: 'Eat breakfast' , task_type: 'morning routine'},
                    {description: 'Put shoes on' , task_type: 'morning routine'},
                    {description: 'Make the bed' , task_type: 'morning routine'},
                    {description: 'Take a shower' , task_type: 'morning routine'},
                    {description: 'Take a bath' , task_type: 'morning routine'},
                    {description: 'Eat dinner' , task_type: 'evening routine'},
                    {description: 'Pick out clothes for tomorrow' , task_type: 'evening routine'},
                    {description: 'Brush my teeth', task_type: 'evening routine'},
                    {description: 'Put pajamas on' , task_type: 'evening routine'},
                    {description: 'Wash my face' , task_type: 'evening routine'},
                    {description: 'Read a book' , task_type: 'evening routine'},
                    {description: 'Take a shower' , task_type: 'evening routine'},
                    {description: 'Take a bath' , task_type: 'evening routine'},
                    {description: 'Do a load of laundry' , task_type: 'household chores'},
                    {description: 'Fold laundry' , task_type: 'household chores'},
                    {description: 'Put away laundry' , task_type: 'household chores'},
                    {description: 'Load dishwasher' , task_type: 'household chores'},
                    {description: 'Empty dishwasher' , task_type: 'household chores'},
                    {description: 'Clear the kitchen table' , task_type: 'household chores'},
                    {description: 'Take the garbage out' , task_type: 'household chores'},
                    {description: 'Take recycle out' , task_type: 'household chores'},
                    {description: 'Pick up toys in the yard' , task_type: 'household chores'},
                    {description: 'Put away 15 things' , task_type: 'household chores'},
                    {description: 'Wash windows' , task_type: 'household chores'},
                    {description: 'Clean bathroom sink' , task_type: 'household chores'},
                    {description: 'Clean bathroom counter' , task_type: 'household chores'},
                    {description: 'Water plants' , task_type: 'household chores'},
                    {description: 'Vacuum a room' , task_type: 'household chores'},
                    {description: 'Clean your bedroom' , task_type: 'household chores'}
  ])
