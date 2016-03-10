# Learning Intent

This is just an experiment to identify a command from a phrase.  "What time is it?" should answer with the current time.  I'm experimenting with various methods of trying to determine the intended action.

The goal is to have a list of known actions, "What time is it?" and "What is the current time?" could mean the same thing.  If the user doesn't remember the exact phrasing for a command, "What is the time?" should execute the same command (ideally).

## Methods Used:

*None yet.*

## Training Set

The training set contains a list of phrase -> action pairs.  Actions are allowed to take arguments from the phrase.

<pre>What time is it -> current_time
What is the current time -> current_time
Remind me at 8 to take out the trash -> remind_me(8, 'take out the trash')
Remind me to let the dog out at 12 -> remind_me(12, 'let the dog out')
[...]</pre>

## Test Set

The test set consists of 2 files.  A phrase file, and a action file.  Each line of the action file corresponds to the proper response for the phrase file.

### phrase.txt

<pre>What time is it
What is the current time
Remind me at 8 to take out the trash
At 7 remind me to do homework
[...]</pre>

### action.txt

`current_time
current_time
remind_me(8, 'take out the trash')
remind_me(7, 'do homework')
[...]`

