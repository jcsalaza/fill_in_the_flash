# git add -p

"Begin an interactive staging session that lets you choose portions of a file to add to the next commit. This will present you with a chunk of changes and prompt you for a command. Use y to stage the chunk, n to ignore the chunk, s to split it into smaller chunks, e to manually edit the chunk, and q to exit." https://www.atlassian.com/git/tutorial/git-basics#!add



``git add -p``

`s` - split commit into chunks (only an option if its splittable - not able to split 2 lines right after each other)

`q` - quit


`commit`

`git add` (for everything else) or `git add -p` (to keep splitting it up)






### **Practice changes in controller.rb**

line 28: change to `view.category_error`

line 37: (fix typo)



*Change I already made in view.rb:*

```
def category_error
  puts "Please enter a valid category." 
end
```