# Welcome to Twitter-topshotusername-extractor

This project aims to collect Tweets given the key words "nbatopshot", "giveaway" or "TS". With the recent interest in NBATopShot, more people are entering giveawayhs via twitter. People tag their Topshot username with the syntax "TS:" or "TS-".

This data can be used for further analysis of the FLOW blockchain or to show people that it is not always the best idea to share this information online.

This project is created in collaboration with Bryant Univsersity and Professor Kevin Mentzer PhD.


# Requirements

- python
	- psycopg2
	- pandas
	- re
	- sqlalchemy
- Postgre local database
	- ability to run pre-made SQL scripts to create the database
	- understand basic queries to extract info needed

# Files

This project contains a few different files; and here is what they do.

## tables.sql
- create a database in pgadmin with the name of your choosing
- enter the query tool and execute the `CREATE TABLE` commands in order
	- twitter_user
	- twitter_tweet
	- topshot_username
	### Below is the ERD for this database
	 - each user can tweet many times
	 - each user can tweet more than one topshot names
		 - would results in people with duplicate accounts (bad!!!)
		 - ![image](\assets\SnipImage.png)

- 

## query.sql

- storage place for frequently used queries
	- has the query to get all tweets from the database containing "TS"
		- which is used in the final code

## toSQLinitial.ipynb

### THIS FILE STARTS THE TWITTER LISTENER TO YOUR DATABASE
- Things to do before running
	- insert your Twitter Developer keys (top and bottom of file)
	- insert your postgre connection information
		- host ("localhost" if running locally.)
		- database (name of the database you want to store the tables in)
		- port (5432 for local)
		- user (username)
		- password (db password)
	- After these items are placed and your postgre tables are made you are ready to collect tweets.

## toSQLFINAL.ipynb
- This code cleans the tweets down to just the users topshot username
	- checks for duplicates already in the db and skips them
- Things to do before running
	-  insert your postgre connection information
		- host ("localhost" if running locally.)
		- database (name of the database you want to store the tables in)
		- port (5432 for local)
		- user (username)
		- password (db password)
	- After these items are placed you are ready to insert the clean data


# Command line scripts

## Folder "cmd"
- contains the same code as .ipynb in .py files for ease of use in a command line interface
- COMING SOON.



# OPEN SOURCE PROJECT

Thank you for checking out this project in trying to better understand NBAtopshot. If you do decide to run this code and store the data please remember to stay ethical and to always share interesting findings.

Happy listening !
