## Derby Tracker

Derby League referee scheduler

###Models & Relationships

Derby leagues are officiated by many head referees and head referees officiate many derby leagues, through the context of a derby bout(game).

A `league` has a `name`, a `referee` has a `name`,
the `bout` holds the id's of both leagues and referees, as well as its own `bout_date`

### The Derby Tracker should:

* Prompt the user to make one of the 3 choices in the file
* Output the end result of picking a specific choice
* Prompt the user to restart the game after the destination is reached
* Output the story to a text file
