# Learning Intent

This is just an experiment to identify a command from a phrase.  "What time is it?" should answer with the current time.  I'm experimenting with various methods of trying to determine the intended action.

The goal is to have a list of known actions, "What time is it?" and "What is the current time?" could mean the same thing.  If the user doesn't remember the exact phrasing for a command, "What is the time?" should execute the same command (ideally).

## Methods Used:

We break the problem up into 3 layers: Tokenization, Classification, and Extraction.

This project has been moved to [Acme::Skynet](https://github.com/kmwallio/Acme-Skynet).
