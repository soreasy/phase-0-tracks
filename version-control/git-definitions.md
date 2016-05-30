# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control refers to a way of creating save points in projects. It is useful for organizing the work of multiple people that are working on the same project, and it also allows us to rollback to previous known-to-be-clean-and-working save points if need be.

* What is a branch and why would you use one?
Branches provide a way of working on a duplicate of known-to-be-working code, and this is done so that you can add to the code (namely add features) and test that they work before merging the duplicate/branch back to the master branch, which is meant to be kept as the overall working version of whatever project is being worked on.

* What is a commit? What makes a good commit message?
A commit is a save point which is typically created after changes are made to a file (or new files or created) on a branch. A good commit message clearly articulates the changes that were made.

* What is a merge conflict?
A merge conflict occurs when there is no way for git to determine which version of a code is the correct version, and both versions cannot be accomodated. For example, if we attempt to merge branch-1 with another branch, branch-2, and in one of the files that exists in both branches there is a line of code that differs between the files on the two branches but is sandwiched between identical lines of code, git won't know which version of the code should be kept and we will get a merge conflict.

* This is just a minor change for challenge 1.5 release 2's sake.