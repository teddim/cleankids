# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



chores = Chart.create(name: 'Teddi\'s Clean Kids' , user_id:1, task_ids: [6,7,8])

tasks = Task.create([
                    {description: 'Brush my teeth', task_type: 'daily routine'},
                    {description: 'Get dressed' , task_type: 'daily routine'},
                    {description: 'Wash my face' , task_type: 'daily routine'},
                    {description: 'Brush my hair' , task_type: 'daily routine'},
                    {description: 'Gather lunch and bookbag' , task_type: 'daily routine'},
                    {description: 'Eat breakfast' , task_type: 'daily routine'},
                    {description: 'Put shoes on' , task_type: 'daily routine'},
                    {description: 'Make the bed' , task_type: 'daily routine'},
                    {description: 'Take a shower' , task_type: 'daily routine'},
                    {description: 'Take a bath' , task_type: 'daily routine'},
                    {description: 'Eat dinner' , task_type: 'daily routine'},
                    {description: 'Pick out clothes for tomorrow' , task_type: 'daily routine'},
                    {description: 'Do a load of laundry' , task_type: 'chores'},
                    {description: 'Fold laundry' , task_type: 'chores'},
                    {description: 'Put away laundry' , task_type: 'chores'},
                    {description: 'Load dishwasher' , task_type: 'chores'},
                    {description: 'Empty dishwasher' , task_type: 'chores'},
                    {description: 'Clear the kitchen table' , task_type: 'chores'},
                    {description: 'Take the garbage out' , task_type: 'chores'},
                    {description: 'Take recycle out' , task_type: 'chores'},
                    {description: 'Pick up toys in the yard' , task_type: 'chores'},
                    {description: 'Put away 15 things' , task_type: 'chores'},
                    {description: 'Wash windows' , task_type: 'chores'},
                    {description: 'Clean bathroom sink' , task_type: 'chores'},
                    {description: 'Clean bathroom counter' , task_type: 'chores'},
                    {description: 'Water plants' , task_type: 'chores'},
                    {description: 'Vacuum a room' , task_type: 'chores'},
                    {description: 'Clean your bedroom' , task_type: 'chores'}
  ])
