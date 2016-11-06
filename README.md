# Robotoy-Rails
This tiny rails app is a web interface of [Robotoy](https://github.com/hosseintoussi/robotoy) gem.
It runs on Rails 5 ActionCable, and is hosted on heroku. Here is the URL: https://robotoy-rails.herokuapp.com/

## About Robotoy
- The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
- There are no other obstructions on the table surface.
- The robot is free to roam around the surface of the table, but must be prevented from falling to destruction. Any movement
that would result in the robot falling from the table must be prevented, however further valid movement commands must still
