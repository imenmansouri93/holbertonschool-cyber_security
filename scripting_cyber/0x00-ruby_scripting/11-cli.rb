#!/usr/bin/env ruby
require 'optparse'

TASKS_FILE = 'tasks.txt'

def load_tasks
  return [] unless File.exist?(TASKS_FILE)
  File.readlines(TASKS_FILE).map(&:chomp)
end

def save_tasks(tasks)
  File.open(TASKS_FILE, 'w') do |file|
    tasks.each { |task| file.puts(task) }
  end
end

def add_task(task)
  tasks = load_tasks
  tasks << task
  save_tasks(tasks)
  puts "Task '#{task}' added."
end

def list_tasks
  tasks = load_tasks
  if tasks.empty?
    puts "No tasks found."
  else
    puts "Tasks:"
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  end
end

def remove_task(index)
  tasks = load_tasks
  if index < 1 || index > tasks.length
    puts "Invalid index."
    return
  end
  removed_task = tasks.delete_at(index - 1)
  save_tasks(tasks)
  puts "Task '#{removed_task}' removed."
end

options = {}
OptionParser.new do |parser|
  parser.banner = "Usage: cli.rb [options]"

  parser.on('-a', '--add TASK', 'Add a new task') do |task|
    options[:add] = task
  end

  parser.on('-l', '--list', 'List all tasks') do
    options[:list] = true
  end

  parser.on('-r', '--remove INDEX', 'Remove a task by index') do |index|
    options[:remove] = index.to_i
  end

  parser.on('-h', '--help', 'Show help') do
    puts parser
    exit
  end
end.parse!

if options[:add]
  add_task(options[:add])
elsif options[:list]
  list_tasks
elsif options[:remove]
  remove_task(options[:remove])
else
  puts "Usage: cli.rb [options]"
end
