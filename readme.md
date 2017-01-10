#Project Description: Tournament Planner

This project required writing a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.

A database schema was created to store the game matches between players. A Python module was written to rank the players and pair them up in matches in a tournament.


## Instructions

1. Install Virtual Box and Vagrant
  1. Download the FSND-Virtual-Machine.zip file from Udacity
  2. Unzip and open the Terminal and browse to the folder you downloaded.
  3. Type `vagrant up`
2. SSH in to the vagrant VM
  1. In the same terminal type `vagrant ssh`
3. Change to the tournament folder
  1. Type `cd /vagrant/tournament`
4. PSQL
  1. type `psql`
  2. copy the contents of tournament.sql and paste into the terminal window
  3. type `\q` to quit out of PSQL
5. Run tournament_test.py file
  1. In the terminal type `python tournament_test.py`

##
All the tests should pass a "Success" message in the terminal should appear.