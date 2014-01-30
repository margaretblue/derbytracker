## Derby Tracker

Derby League referee scheduler

###Models & Relationships

Derby leagues are officiated by many head referees and head referees officiate many derby leagues, through the context of a derby bout(game).

A `league` has a `name`, a `referee` has a `name`,
the `bout` holds the id's of both leagues and referees, as well as its own `bout_date`

### The Derby Tracker should:

* Prompt the user to

